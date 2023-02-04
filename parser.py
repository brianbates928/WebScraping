import sys
import xml.dom.minidom



document = xml.dom.minidom.parse(sys.argv[1])
desc=""
product=document.getElementById('product-content')
pricing=0
name = document.getElementsByTagName('title')

title=name[0].firstChild.nodeValue

if sys.argv[2]=="albert":
    length=len(title) - 13
    desc=title
    title=title[0:length]
    
    review = document.getElementsByTagName('product-detail')[0].getAttribute('data-product-review-average')
   
    word = '"price":'
   
    with open(sys.argv[1], 'r') as fp:
        
    # read all lines in a list
        lines = fp.readlines()
        for line in lines:
     
        # check if string present on a current line
            if line.find(word) != -1:
                pricing=line[14:len(line)-3]
else:
    for subelement in document.getElementsByTagName("span"):
     if subelement.hasAttribute("data-price-amount"):
        pricing= (subelement.getAttribute(("data-price-amount")))
    length=len(title) - 11
    temp=title[len(title) - 11:len(title)]
    if temp==" | Rite Aid":

        title=title[0:length]
    
    desc="Description"
    for subelement in document.getElementsByTagName("div"):
        if subelement.hasAttribute("data-role"):
            desc=(subelement.TEXT_NODE)
    review="N/A"
import mysql.connector

num=sys.argv[1][0:(len(sys.argv[1])-5)]
def insert(cursor):
    
    query = 'INSERT INTO products(num,productName,productDesc,listPrice,review) VALUES (%s,%s,%s,%s,%s)'
    cursor.execute(query, (num,title,desc,pricing, review))
    
    cnx.commit()

#def update(cursor):
  #  query = 'UPDATE book SET price=%s WHERE isbn=%s'
   # cursor.execute(query, (29.95,'0385514239'))


try:
    cnx = mysql.connector.connect(host='localhost', user='root', password='', database='my_tables')
    cursor = cnx.cursor()
    
   
   
    insert(cursor)
    cnx.commit()

   # update(cursor)
    #cnx.commit()

    cursor.close()
except mysql.connector.Error as err:
    print(err)
finally:
    try:
        cnx
    except NameError:
        pass
    else:
        cnx.close()