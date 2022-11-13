# TestToDoList
How to Install
1. Install Python Nevigate to Web for Download https://www.python.org/downloads/
2. Donwload and install program
3. Run: " python3 -m pip install robotframework " for install robotframework 
   - ระบบจะติดตั้ง Lib: '/Library/Frameworks/Python.framework/Versions/3.11/bin' ให้ด้วย
4. ติดตั้ง Web Driver Manager เพื่อให้เว็บก็ต้องหาคนดูแลเรื่อง web driver ที่ใช้ควบคุมเครื่องมือแสดง web content ที่เรียกว่า Browser อยู่แล้ว
  - Run: " python3 -m pip install webdrivermanager "
5. การติดตั้ง Chrome web driver 
   - Run: " webdrivermanager chrome --linkpath /usr/local/bin "
6. ติดตั้ง SeleniumLibrary สำหรับ Robot Framework  
- Run: " python3 -m pip install --upgrade robotframework-seleniumlibrary "
