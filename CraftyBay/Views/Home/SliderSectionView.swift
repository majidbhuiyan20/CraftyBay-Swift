//
//  SliderSectionView.swift
//  CraftyBay
//
//  Created by Majid Bhuiyan on 19/1/26.
//
import SwiftUI

struct CarouselSliderView: View {
    let items: [String]
    @State private var currentIndex = 0
    
    var body: some View {
        VStack {
            TabView(selection: $currentIndex) {
                ForEach(0..<items.count, id: \.self) { index in
                    ZStack {
                        HStack {
                            // Image on the left
                            Image("shoes")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 145, height: 145)
                                .padding(.leading, 10)
                            
                            Spacer()

                            // VStack on the right
                            VStack(alignment: .leading, spacing: 10) {
                                Text(items[index])
                                    .font(.title3)
                                    .bold()
                                    .foregroundColor(.white)

                                Button(action: {
                                    print("Button tapped")
                                }) {
                                    Text("Buy Now")
                                        .foregroundColor(AppColor.primaryColor)
                                        .bold()
                                        .padding(.vertical, 10)
                                        .padding(.horizontal, 20)
                                        .background(Color.white)
                                        .cornerRadius(10)
                                }
                            }
                            .padding(.leading, 10)

                            Spacer()
                        }
                        .frame(height: 180)
                        .frame(maxWidth: .infinity)
                        .background(AppColor.primaryColor)
                        .cornerRadius(15)
                        .tag(index)

                    }
                    .frame(height: 180)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(15)
                    .padding(.horizontal, 16)
                    .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .frame(height: 180)

            //Dots Indicator
            HStack(spacing: 8) {
                ForEach(0..<items.count, id: \.self) { index in
                    Circle()
                        .fill(currentIndex == index ? Color.cyan : Color.gray.opacity(0.5))
                        .frame(width: currentIndex == index ? 12 : 8,
                               height: currentIndex == index ? 12 : 8)
                }
            }
            
        }
        .onAppear {
            startAutoScroll()
        }
    }
    
    func startAutoScroll() {
        Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { _ in
            withAnimation {
                currentIndex = (currentIndex + 1) % items.count
            }
        }
    }
}
