//
//  CotegoryImage.swift
//  ToDo
//
//  Created by Kikuchi Yuichi on 2020/12/13.
//

import SwiftUI

struct CategoryImage: View {
    
    //TodoEntityのCategoryを受け取れれるように
    var category: TodoEntity.Category
    
    init(_ category: TodoEntity.Category?) {
        self.category = category ?? .ImpUrg_1st
    }
    
    var body: some View {
        //imageを呼び出している
        Image(systemName: category.image())
            .resizable()
            .scaledToFit()
            .foregroundColor(.white)
            .padding(2.0)
            .frame(width: 30, height: 30)
            .background(category.color())
            .cornerRadius(6.0)
    }
}

struct CategoryImage_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
        CategoryImage(TodoEntity.Category.ImpUrg_1st)
        }
    }
}
