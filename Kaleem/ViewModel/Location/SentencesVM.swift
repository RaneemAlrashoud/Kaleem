//
//  Sentences.swift
//  Kaleem
//
//  Created by Raneem AlRashoud on 25/07/1443 AH.
//

//Loop depending on location list
//Change sentences.swift later; to have multible files are named based on the spot name, or if statements


import SwiftUI

struct SentencesVM: View {
//    @EnvironmentObject var session: SessionStore
//    @State var selectedTab = "house"
   
    var body: some View {
        

        
        ZStack(alignment: .bottom, content: {
            Color.white
                .ignoresSafeArea()
            
            
           // Custom Tab Bar....
        ListviewSentencesV()
        })
        
   
    }
}

struct SentenceDB {
   var sentence: String
  }

//Temp Array, later we will fetch directly
var SentenceDBArray = [
    SentenceDB(sentence:"أريد حجز موعد" ),
    SentenceDB( sentence:"أريد التحدث إلى الطبيب"),
    SentenceDB (sentence:"أريد الدفع شبكة"),
    SentenceDB (sentence:"أريد إضافة معيار اسبريسو إضافي"),
    SentenceDB (sentence:"السلام عليكم ، \n أريد طلب قهوة ")

]
struct ListviewSentencesV: View {
  
    var body: some View{
      

        VStack{
            Text("أهلاً بك في الريان").bold()
            
            Text("الجمل الأكثر استخداما في مستشفى الريان")
            
//            HStack{
//             Spacer(minLength: 20)
//                Image(systemName:"heart").font(.system (size: 30, weight: .semibold))
//                    .foregroundColor(Color("Color"))
//                    //.padding(.all,15)
//
//                Image(systemName:"speaker").font(.system (size: 30, weight: .semibold))
//                    .foregroundColor(Color("Color"))
//                 Spacer()
//
//                Text ("أريد حجز موعد").foregroundColor(.white) .font(Font.custom("Almarai-Regular", size: 20)) .kerning (1.9)
//
//
//                Image ("HH").resizable().scaledToFit().frame (width: 60, height: 60).padding(10)
//
//            }//HStack
//            .foregroundColor(Color.black)
//            .background (Color.gray.shadow(color: .white.opacity(0.65), radius: 5, x: 0, y:2)).cornerRadius (20)
//             .zIndex(0)
//             .padding( )
            // Spacer(minLength: 200)
            

            GeometryReader{ firtFrame in
                 ScrollView(. vertical, showsIndicators: false) {
                    VStack{
                        ForEach(SentenceDBArray, id: \.sentence){ album in
                            GeometryReader{ animalArea in
                                AlbumView(album: album)
                                     .scaleEffect(dimensionValue (firstFrame: firtFrame.frame (in: .global).minY, minY: animalArea.frame(in: .global).minY))
                                     .opacity (Double(dimensionValue(firstFrame: firtFrame.frame (in: .global).minY, minY: animalArea.frame (in: .global).minY)))
                            }.frame(height: 100)
                        }
                    }.padding(.horizontal).padding(.top)
                }.zIndex (1.0)

        }
        
        
        
    }  //VStack
    
}
}

func dimensionValue(firstFrame: CGFloat, minY: CGFloat) -> CGFloat {
    withAnimation(.easeOut (duration: 1)){
        let dimension = (minY - 15) / firstFrame
        if dimension > 1 {
             return 1
          } else {
             return dimension
    }
    }
    
}
      
    struct AlbumView: View {
        var album: SentenceDB
        var body: some View{
          
            HStack{
             Spacer(minLength: 20)
                Image(systemName:"heart").font(.system (size: 25, weight: .semibold))
                    .foregroundColor(Color("Color"))
                    //.padding(.all,15)
                
                Image(systemName:"speaker").font(.system (size: 30, weight: .semibold))
                    .foregroundColor(Color("Color"))
                 Spacer()
              
//                multilineTextAlignment(album.sentence.foregroundColor(.white) .font(Font.custom("Almarai-Regular", size: 20)) .kerning (1.9))
                
                Text  (album.sentence).foregroundColor(.white) .font(Font.custom("Almarai-Regular", size: 20)).kerning (1.9).multilineTextAlignment(.trailing)
          
         
                Image ("HH").resizable().scaledToFit().frame (width: 60, height: 60).padding(10)
            
            }//HStack
            
            .foregroundColor(Color.black)
            .shadow(color: .black, radius:20, x: 30, y: 20)
            .background (Color.gray.shadow(color: .white.opacity(0.65), radius: 5, x: 0, y:2)).cornerRadius (20)
            //.shadow(color: .gray, radius:20, x: 30, y: 2)
             .zIndex(0)
             .padding( )
            
        }
        
    }
                
struct SentencesV_Previews: PreviewProvider {
    static var previews: some View {
        SentencesVM()
    }
}

