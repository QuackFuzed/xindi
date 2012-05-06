/*
	Copyright (c) 2012, Matt Quackenbush (http://www.quackfuzed.com/)
	
	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation
	files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, 
	modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software 
	is furnished to do so, subject to the following conditions:
	
	The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
	
	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES 
	OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE 
	LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR 
	IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

component
{

	/**
     * called before injecting property values into a newly loaded entity instance.
	 */
	void function preLoad(any entity){}
	
    /**
     * called after an entity is fully loaded.
     */
	void function postLoad(any entity){}

   /**
    * called before inserting the entity into the database.
    */
	void function preInsert( any entity )
	{
		var timestamp = now();
		if ( StructKeyExists( arguments.entity, "setcreated" ) ) arguments.entity.setcreated( timestamp );
		if ( StructKeyExists( arguments.entity, "setupdated" ) ) arguments.entity.setupdated( timestamp );
	}    
	
    /**
     * called after the entity is inserted into the database. 
     */
	void function postInsert(any entity){}
    
    /**
     * called before the entity is updated in the database.
     */
	void function preUpdate( any entity, struct oldData )
	{
		var timestamp = now();
		if ( StructKeyExists( arguments.entity, "setupdated" ) ) arguments.entity.setupdated( timestamp );
	}     
	
    /**
     * called after the entity is updated in the database. 
     */
    void function postUpdate(any entity){}
	
    /**
     * called before the entity is deleted from the database. 
     */
    void function preDelete(any entity){}
	
    /**
     * called after deleting an item from the datastore
     */
    void function postDelete(any entity){}
		
}