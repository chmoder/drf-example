import { Component, OnInit } from '@angular/core';
import { ApiService } from'../apiservice.service';
import { FormGroup,FormControl } from '@angular/forms';
import { Router } from '@angular/router';

@Component({
  selector: 'app-myform',
  templateUrl: './myform.component.html',
  styleUrls: ['./myform.component.css']
})

export class MyformComponent implements OnInit {
  // a form for entering and validating data
  productForm = new FormGroup({
    age : new FormControl(),
    gender : new FormControl(),
    tobacco_status : new FormControl(),
  });
  
  constructor(private router:Router, private serv:ApiService) { }
  
  ngOnInit(): void {
  }

  productData_post:any;  // variable that takes form data.
  // service for posting data to server
  searchQuotes(){
    if(this.validate_form()){
        this.router.navigate(
          ['/viewadded'],
          {
            queryParams: this.productForm.value,
          }
        );

        // this.productData_post = this.productForm.value; // assign form data to the variable
        // this.serv.postData(`quotes/`,this.productData_post).subscribe((data)=>{
        //   //console.log(this.productData_post);
        //   alert('Product Added');
        // });
    }
    else{
      alert('Please fill form correctly');
    }
  }
  validate_form(){
    return true;
    const formData = this.productForm.value;
    if(formData.name== null){
      return false;
    }else if(formData.price == null || formData.price <= 0 ){
      return false;
    }else if(formData.category == null){
      return false;
    }else{
      return true;
    }
  }
}