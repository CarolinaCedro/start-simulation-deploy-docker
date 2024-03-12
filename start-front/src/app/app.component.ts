import {Component, OnInit} from '@angular/core';
import {RouterOutlet} from '@angular/router';
import {NgForOf} from "@angular/common";
import {AppService} from "./app.service";
import {HttpClientModule} from "@angular/common/http";


@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, NgForOf, HttpClientModule],
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss'
})
export class AppComponent implements OnInit {


  tasks!: any[];

  constructor(private appService: AppService) {
  }

  ngOnInit() {
    this.appService.getTasks().subscribe((data: any) => {
      console.log(data)
      this.tasks = data;
    });

  }
}
