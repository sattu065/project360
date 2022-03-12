import { LightningElement, wire } from 'lwc';
import fetchStudents from '@salesforce/apex/GetStudent.fetchStudents';
const columns = [
    { label: 'Name', fieldName: 'name' },
    { label: 'id', fieldName: 'id', type: 'id' },
];
export default class ShowStudents extends LightningElement {
    @wire(fetchStudents) students;
    columns = columns;
}