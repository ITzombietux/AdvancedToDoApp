//
//  TodoListViewController.swift
//  AdvancedToDoApp
//
//  Created by zombietux on 2020/10/28.
//  Copyright © 2020 FastCampus. All rights reserved.
//

/*
(1) 프로젝트 명: 야너무 만들수있어(AdvancedToDoApp)
(2) 프로젝트 설명(200자 이내): Microsoft의 To Do 레벨의 투두리스트 어플을 만들어봅니다. 단순히 투두만 만들어서 처리하는게 아니라, 디테일 페이지도 추가해서 노트도 추가하고, 이미지를 추가 하는 상황도 다루게 되고, 별표처리로 우선순위를 줄 수 있습니다.
   
(3) 프로젝트 과제 상세
ᄀ. 이앱은 하나의 화면을 가지게 됩니다. 투두 리스트 랜딩 화면에서(UINvagiationController), 클릭하면
디테일 페이지로 푸쉬하게 합니다. (V)
ᄂ. 투두 리스트 tableView에서 투두의 각각 요소에 해당하는 indicator을 보여주세요. 노트가 있으면
노트이미지, 이미지가 있으면, 이미지가 있다는걸 알려주는 이미지, Favorite은 별표 아이콘을 통해 알려줍니다.
 
 
ᄃ. Favorite가 선택이 되면 최 상단에 위치하게 해주세요.
ᄅ. Task가 status가 끝나게 되면, 밑줄을 그어서 끝났다는 느낌을 살리면 좋을거같아요.
ᄆ. Navigation Bar에 플러스 버튼을 눌러서 추가가 가능하게 해주세요.
ᄋ. tableviewcell을 swipe하면 지우거나 수정이 가능하게 해주세요.
ᄉ. 시간이 남으면, 정렬하는 로직을 추가해도 좋을것 같아요.(생성된 날짜나, dueDate에 가까운 순으로 정렬하는 방식)
ᄌ. CoreData 혹은 json자체에 값들을 저장을 해주세요.
*/

import UIKit

class TaskListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
            tableView.delegate = self
            tableView.rowHeight = 190
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func unwindToList(segue: UIStoryboardSegue) {

    }
 
}

extension TaskListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell") as! TaskCell
        cell.noteTitleLabel.text = "야너두 만들 수 있어 임마!!!!!!!!!!!!!"
        cell.createdAtLabel.text = "2020.10.29"
        
        return cell
    }
}
