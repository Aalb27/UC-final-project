//
//  ContentView.swift
//  fitness
//
//  Created by Abdulaziz Albalool on 24/09/2022.
//

import SwiftUI



struct exercise: Identifiable{
    let id = UUID()
    let name: String
    let imagename: String
}

struct Workoutinfo: Identifiable {
    let id = UUID()
    let day: String
    let imagename: String
   let ex: [exercise]
    
}
struct ContentView: View {
    let workouts = [ Workoutinfo( day: "Arms day", imagename: "Arms-day", ex: [exercise(name: "Biceps-curl", imagename: "biceps-curl"),
                                                                               exercise(name: "Triceps-extension", imagename: "triceps-extension"), exercise(name: "Triceps-pushdown", imagename: "triceps-pushdown")]),
                     Workoutinfo( day: "Back day", imagename: "back-day", ex: [exercise(name: "Latpulldown", imagename: "lat-pulldown"), exercise(name: "Back-extension", imagename: "back-extension")]),
                     Workoutinfo( day: "Chest day", imagename: "chest-day", ex: [exercise(name: "Chest-press", imagename: "chest-press"), exercise(name: "Chest-Fly", imagename: "chest-fly")])
                     , Workoutinfo( day: "Shoulders day", imagename: "shoulders-day", ex: [exercise(name: "Lateral-raise", imagename: "lateral-raise"), exercise(name: "Shoulder-press", imagename: "shoulder-press")])
                     , Workoutinfo( day: "Legs day", imagename: "legs-day", ex: [exercise(name: "Legs-press", imagename: "leg-press"), exercise(name: "Leg-curl", imagename: "leg-curl")])]
                   
    var body: some View {
        
        VStack(spacing:70) {
            ZStack{
                Image("fitness-workout")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                    .frame(width: 380, height: 300)
                    .cornerRadius(20)
                    .clipped()
                    .shadow(radius: 8)
                    .padding(.top, 20)
                
                VStack{
                    Spacer()
                    Text("Full body workout")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    Text("For beginners")
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                    
                } .padding()
                    .frame(width: 380.0, height: 100)
                    .background(Color.black.opacity(0.6))
                
                
            }
            
            VStack{
                Text("Weekly Plan")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .background(Color.gray.opacity(0.6))
                    .padding()
                Divider()
                    .background(Color(.white))
                
            }
            ScrollView(.horizontal){
                HStack{
                    ForEach(workouts) { workout in
                        NavigationLink(destination: exercisedetail(workout: workout)){
                        VStack{
                                Text(workout.day)
                                    .foregroundColor(.white)
                                Image(workout.imagename)
                                    .resizable()
                                    .frame(width: 100,height: 100)
                            }
                        } .ignoresSafeArea()
                    }
                    
                    
                }
            }
        } .background(Color.black)

        }
        
        
    }





struct exercisedetail: View {
    let workout: Workoutinfo
    var body: some View {
        ZStack{
            Image(workout.imagename)
                .resizable()
                .scaledToFill()
                .opacity(0.1)
         
            VStack{
                Text(workout.day)
                    .font(.largeTitle)
                    .fontWeight(.bold)
           
                Spacer()
              
             
                 
                    ForEach(workout.ex) { exercise in
                        
                        VStack{
                            Text(exercise.name)
                            Image(exercise.imagename)
                                .resizable()
                                .frame(width: 200, height: 200)
                    
                    
            
                        } .multilineTextAlignment(.center)
            }
                    
            } .foregroundColor(.white)
        } .background(Color.black)
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





struct workoutlistitem: View {
    let workout: Workoutinfo
    var body: some View {
        VStack{  Text(workout.day)
                .foregroundColor(.white)
                .font(.title)
                .fontWeight(.semibold)
            
            Image(workout.imagename)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
        }
            .padding()
    }
}
