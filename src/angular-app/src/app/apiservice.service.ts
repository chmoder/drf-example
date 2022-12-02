import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http'
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
    'Authorization': 'Basic YWRtaW46cGFzc3dvcmQ='
  }
  
  requestOptions = {                                                                                                                                                                                 
    headers: new HttpHeaders(this.headerDict), 
  };

  getData(url:string){
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
