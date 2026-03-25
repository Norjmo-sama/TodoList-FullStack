import { BeforeInsert, BeforeUpdate, Column, Entity } from "typeorm";
import {v4 as uuid} from "uuid";

@Entity()
export class Todo {
    @Column({nullable: false, unique: true, length: 50}) 
    id: String

    @Column({length: 120, nullable: false})
    title: string

    @Column({length: 500, nullable: true})
    description: string

    @Column({length: 16, nullable: false, default: "NOTSTARTED"})
    itemstatus: string

    @Column({type: "datetime", default: new Date()})
    createDate: Date

    @Column({type: "datetime", default: new Date()})
    lastUpdated: Date

    @BeforeInsert()
    onInit() {
        // Place a new UUID for our object.
        this.id = uuid()
    }

    @BeforeUpdate()
    onItemUpdate() {
        this.lastUpdated = new Date()
    }
}



// TodoItem
// --------
// id: String
// title: String
// desc: String | undefined
// itemStatus: ItemStatus
// creationDate: Date
// lastUpdated: Date

//. ItemStatus
// -----------
// NOTSTARTED, INPROGRESS, COMPLETED, ARCHIVED