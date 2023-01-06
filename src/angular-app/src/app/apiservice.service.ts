import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders, HttpParams } from '@angular/common/http'
import { Observable } from 'rxjs';


type requestOptionsType = {
  headers: HttpHeaders;
  params?: HttpParams;
}

@Injectable({
  providedIn: 'root'
})
export class ApiService {
  base_url:string = "https://drf-example.chmoder.org";
  constructor(private http:HttpClient) { }
  // service to get list of data and also data of particular id.

  headerDict = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': 'Basic None'
  }

  requestOptions: requestOptionsType = {                                                                                                                                                                            
    headers: new HttpHeaders(this.headerDict),
  };

  getData(url: string, searchCriteria?: object): Observable<Object> {
    this.requestOptions.params = new HttpParams();

    if(searchCriteria && Object.keys(searchCriteria).length > 0) {
      for (const [k, v] of Object.entries(searchCriteria)) {
        this.requestOptions.params = this.requestOptions.params.set(k, v);
      }
    }

    return this.http.get(
      `${this.base_url}/${url}`,
      this.requestOptions
    );
  }
  // service to send data to server. creating new data
  postData(url:string,data:object){
    return this.http.post(`${this.base_url}/${url}`,data);
  }
  // service to update the existing data
  updateData(url:string,data:object){
    return this.http.put(`${this.base_url}/${url}`,data);
  }
  // service to delete the data
  deleteData(url:string){
    return this.http.delete(`${this.base_url}/${url}`);
  }
}
