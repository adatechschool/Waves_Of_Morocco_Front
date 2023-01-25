//
//  LandingPage.swift
//  AdaSurf
//
//  Created by Delhia Gbelidji on 25/01/2023.
//

import SwiftUI

struct LandingPage: View {
    @State private var selection: Tab = .featured

    enum Tab {
        case featured
        case list
    }
  @State var progress: CGFloat = 0
  @State var doneLoading: Bool = false
    

  var body: some View {
    ZStack {
      if doneLoading {
        DangerousHome()
          .transition(AnyTransition.opacity.animation(.easeInOut(duration: 1.0)))
          TabView(selection: $selection) {
             DangerousHome()
                  .tabItem {
                      Label("Spots", systemImage: "star")
                  } 
                  .tag(Tab.featured)

              LandmarksList()
                  .tabItem {
                      Label("List", systemImage: "list.bullet")
                  }
                  .tag(Tab.list)
          }
      } else {
        LoadingView(content: Image("logoWOM")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 50),
              progress: $progress)
          // Added to simulate asynchronous data loading
          .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
              withAnimation {
                self.progress = 0
              }
              DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                withAnimation {
                  self.doneLoading = true
                }
              }
            }
          }
      }
    }
  }
}
struct LandingPage_Previews: PreviewProvider {
  static var previews: some View {
    LandingPage()
  }
}
struct ScaledMaskModifier<Mask: View>: ViewModifier {
  var mask: Mask
  var progress: CGFloat
  func body(content: Content) -> some View {
    content
      .mask(GeometryReader(content: { geometry in
        self.mask.frame(width: self.calculateSize(geometry: geometry) * self.progress,
                height: self.calculateSize(geometry: geometry) * self.progress,
                alignment: .center)
      }))
  }
  // Calculate Max Size of Mask
  func calculateSize(geometry: GeometryProxy) -> CGFloat {
    if geometry.size.width > geometry.size.height {
      return geometry.size.width
    }
    return geometry.size.height
  }
}
struct LoadingView<Content: View>: View {
  var content: Content
  @Binding var progress: CGFloat
  @State var logoOffset: CGFloat = 0 //Animation Y Offset
  var body: some View {
    content
    ZStack{
      LinearGradient(colors: [.blue, .yellow], startPoint: .topLeading, endPoint: .bottomTrailing)
        .ignoresSafeArea()
      ZStack{
        Image("logoWOM")
          .resizable()
          .scaledToFit()
          .padding(.horizontal, 50)
        Text("Waves Of Morocco")
          .frame(width: 400, height: 1150)
          .font(Font.title.weight(.semibold))
        .foregroundColor(Color.yellow)}}
      .modifier(ScaledMaskModifier(mask: Circle(), progress: progress))
      .offset(x: 0, y: logoOffset)
      .onAppear {
        withAnimation(Animation.easeInOut(duration: 1)) {
          self.progress = 1.0
        }
        withAnimation(Animation.easeInOut(duration: 0.4).repeatForever(autoreverses: true)) {
          self.logoOffset = 10
        }
      }
  }
}
