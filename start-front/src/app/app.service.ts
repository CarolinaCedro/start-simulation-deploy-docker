import {Injectable} from '@angular/core';
import {Observable} from "rxjs";
import {HttpClient} from "@angular/common/http";

@Injectable({
  providedIn: 'root'
})
export class AppService {

  constructor(private http: HttpClient) {
  }

  baseUrl: string = "http://localhost:8304";

  getTasks(): Observable<any> {
    return this.http.get(`${this.baseUrl}/api/start`);
  }

}
