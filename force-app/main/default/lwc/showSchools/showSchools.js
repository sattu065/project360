import { LightningElement, wire } from 'lwc';
import fetchStudents from '@salesforce/apex/GetStudent.fetchStudents';
const columns = [
    { label: 'Name', fieldName: 'name' },
];
export default class ShowSchools extends LightningElement {
    @wire(fetchStudents) schools;
    columns = columns;
    handleClick(event){
        
    }
}