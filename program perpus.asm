.model small
.code
.org 100h
start:
            jmp mulai
            teks    db 13,10,'             APLIKASI PEMINJAMAN BUKU PERPUSTAKAAN KAMPUS','$'
    
nama        db 13,10,'Nama Lengkap              : $'
no          db 13,10,'NO HP                     : $'
email       db 13,10,'Email                     : $'
affiliasi   db 13,10,'Affiliasi                 : $'
nim         db 13,10,'NIM/KTP (ID Card Number)  : $'
jenjang     db 13,10,'Jenjang                   : $'
fakultas    db 13,10,'Fakultas                  : $'


daftar  db 13,10,'     DAFTAR BUKU PERPUSTAKAAN',13,10
        db '|--|--------------------|',13,10
        db '|NO|    BENTUK BUKU     |',13,10
        db '|--|--------------------|',13,10
        db '|01|Buku Teks           |',13,10
        db '|--|--------------------|',13,10
        db '|02|E-book              |',13,10
        db '|--|--------------------|',13,10
        db '|03|E-jurnal            |',13,10
        db '|--|--------------------|',13,10
        db '|04|Jurnal              |',13,10
        db '|--|--------------------|',13,10
        db '|05|Ensiklopedia        |',13,10
        db '|--|--------------------|',13,10
        db '|06|Kamus               |',13,10
        db '|--|--------------------|',13,10
        db '|07|Tugas Akhir         |',13,10
        db '|--|--------------------|',13,10
lanjut db 13,10,'LANJUT Tekan y untuk lanjut ========> $'
        
judul       db 13,10,'Judul buku yang dipinjam : $'     
tampung_nama        db 30,?,30 dup(?)
tampung_no          db 13,?,13 dup(?)
tampung_email       db 30,?,30 dup(?)
tampung_affiliasi   db 13,?,13 dup(?)
tampung_nim         db 13,?,13 dup(?)
tampung_jenjang     db 13,?,13 dup(?)
tampung_fakultas    db 20,?,20 dup(?)
tampung_judul       db 30,?,30 dup(?)

a db 01
b db 02
c db 03
d db 04
e db 05
f db 06
g db 07 
h db 08
i db 09
j dw 15

error   db 13,10,'Kode yang anda masukkan salah $'
pilih   db 13,10,'Silahkan masukkan pilihan anda : $'
success db 13,10,'Selamat anda telah berhasil $'

    
mulai: 
    MOV AH,09h
    MOV DX,offset teks
    int 21h
    
     
    MOV AH,09h
    LEA DX,nama
    INT 21H
    MOV AH,0ah
    LEA DX,tampung_nama
    INT 21H
    PUSH DX
    
    MOV AH,09H
    LEA DX,no
    INT 21H
    MOV AH,0ah
    LEA DX,tampung_no
    INT 21H
    PUSH DX
    
    MOV AH,09H
    LEA DX,email
    INT 21H   
    MOV AH,0ah
    LEA DX,tampung_email
    INT 21H
    PUSH DX
    
    MOV AH,09H
    LEA DX,affiliasi
    INT 21H
    MOV AH,0ah
    LEA DX,tampung_affiliasi
    INT 21H
    PUSH DX
    
    MOV AH,09H
    LEA DX,nim
    INT 21H
    MOV AH,0ah
    LEA DX,tampung_nim
    INT 21H
    PUSH DX
    
    MOV AH,09H
    LEA DX,jenjang
    INT 21H     
    MOV AH,0ah
    LEA DX,tampung_jenjang
    INT 21H
    PUSH DX
    
    MOV AH,09H
    LEA DX,fakultas
    INT 21H   
    MOV AH,0ah
    LEA DX,tampung_fakultas
    INT 21H
    PUSH DX
    
     
    
    MOV AH,09h
    MOV DX,offset daftar
    int 21h
    
    MOV AH,09H
    MOV DX,offset lanjut 
    INT 21h 
    
    MOV AH,01H
    INT 21H
    CMP al,'y'
    jmp proses
    jne error_msg
    

    
error_msg:
    MOV AH,09H
    MOV DX,offset error
    INT 21H  
    INT 20H
    jne error_msg  
    
proses:
    MOV AH,09H
    MOV DX,offset pilih
    INT 21H 
    
    MOV AH,1
    INT 21H
    MOV BH,al
    MOV AH,1
    INT 21H
    MOV bl,al
    
    
    
    
    cmp bh,'0'
    cmp bl,'1'
    je hasil1
    
    cmp bh,'0'
    cmp bl,'2'
    je hasil2
    
    cmp bh,'0'
    cmp bl,'3'
    je hasil3
    
    cmp bh,'0'
    cmp bl,'4'
    je hasil4
    
    cmp bh,'0'
    cmp bl,'5'
    je hasil5
    
    cmp bh,'0'
    cmp bl,'6'
    je hasil6
    
    cmp bh,'0'
    cmp bl,'7'
    je hasil7
    
    jne error_msg
    
    
hasil1:
    MOV AH,09H
    LEA DX,teks1 
    INT 21H
    
    MOV AH,09H
    LEA DX,judul
    INT 21H 
    MOV AH,0ah
    LEA DX,tampung_judul
    INT 21H 
    
    MOV AH,09H
    LEA DX,thx 
    INT 21H
       
    INT 20H
    
hasil2: 
    MOV AH,09H
    LEA DX,teks2
    INT 21H
    
    MOV AH,09H
    LEA DX,judul
    INT 21H 
    MOV AH,0ah
    LEA DX,tampung_judul
    INT 21H 
    
    MOV AH,09H
    LEA DX,thx 
    INT 21H
    
    INT 20H 

hasil3: 
    MOV AH,09H
    LEA DX,teks3
    INT 21H 
    
    MOV AH,09H
    LEA DX,judul
    INT 21H 
    MOV AH,0ah
    LEA DX,tampung_judul
    INT 21H   
    
    MOV AH,09H
    LEA DX,thx 
    INT 21H
    
    INT 20H
    
hasil4: 
    MOV AH,09H
    LEA DX,teks4
    INT 21H 
    
    MOV AH,09H
    LEA DX,judul
    INT 21H 
    MOV AH,0ah
    LEA DX,tampung_judul
    INT 21H     
    
    MOV AH,09H
    LEA DX,thx 
    INT 21H
    
    INT 20H
    
hasil5: 
    MOV AH,09H
    LEA DX,teks5
    INT 21H  
    
    MOV AH,09H
    LEA DX,judul
    INT 21H 
    MOV AH,0ah
    LEA DX,tampung_judul
    INT 21H 
    
    MOV AH,09H
    LEA DX,thx 
    INT 21H
    
    INT 20H   
    
hasil6: 
    MOV AH,09H
    LEA DX,teks6
    INT 21H
    
    MOV AH,09H
    LEA DX,judul
    INT 21H 
    MOV AH,0ah
    LEA DX,tampung_judul
    INT 21H   
    
    MOV AH,09H
    LEA DX,thx 
    INT 21H
    
    INT 20H
    
hasil7: 
    MOV AH,09H
    LEA DX,teks7
    INT 21H  
    
    MOV AH,09H
    LEA DX,judul
    INT 21H 
    MOV AH,0ah
    LEA DX,tampung_judul
    INT 21H
    
    MOV AH,09H
    LEA DX,thx 
    INT 21H
    
    INT 20H     
    
teks1 db 13,10,'Anda melakukan peminjaman buku berbentuk buku teks $ ' 
teks2 db 13,10,'Anda melakukan peminjaman buku berbentuk E-Book','$'
teks3 db 13,10,'Anda melakukan peminjaman buku berbentuk E-Jurnal','$' 
teks4 db 13,10,'Anda melakukan peminjaman buku berbentuk Jurnal','$'
teks5 db 13,10,'Anda melakukan peminjaman buku berbentuk Ensiklopedia','$'
teks6 db 13,10,'Anda melakukan peminjaman buku berbentuk Kamus','$' 
teks7 db 13,10,'Anda melakukan peminjaman buku berbentuk Tugas akhir','$'  
 
    
thx   db 13,10,'Terima kasih telah meminjam buku di perpustakaan kami $' 
    
END start
                           .model small
.code
.org 100h
start:
            jmp Proses
    
nama        db 13,10,'Nama Lengkap : $'
no          db 13,10,'NO HP : $'
email       db 13,10,'Email : $'
affiliasi   db 13,10,'Affiliasi : $'
nim         db 13,10,'NIM/KTP (ID Card Number) : $'
jenjang     db 13,10,'Jenjang : $'
fakultas    db 13,10,'Fakultas : $'
judul       db 13,10,'Judul buku : $'  
    
tampung_nama        db 30,?,30 dup(?)
tampung_no          db 13,?,13 dup(?)
tampung_email       db 30,?,30 dup(?)
tampung_affiliasi   db 13,?,13 dup(?)
tampung_nim         db 13,?,13 dup(?)
tampung_jenjang     db 13,?,13 dup(?)
tampung_fakultas    db 20,?,20 dup(?)
tampung_judul       db 30,?,30 dup(?)
    
Proses:  
    MOV AH,09h
    LEA DX,nama
    INT 21H
    MOV AH,0ah
    LEA DX,tampung_nama
    INT 21H
    PUSH DX
    
    MOV AH,09H
    LEA DX,no
    INT 21H
    MOV AH,0ah
    LEA DX,tampung_no
    INT 21H
    PUSH DX
    
    MOV AH,09H
    LEA DX,email
    INT 21H   
    MOV AH,0ah
    LEA DX,tampung_email
    INT 21H
    PUSH DX
    
    MOV AH,09H
    LEA DX,affiliasi
    INT 21H
    MOV AH,0ah
    LEA DX,tampung_affiliasi
    INT 21H
    PUSH DX
    
    MOV AH,09H
    LEA DX,nim
    INT 21H
    MOV AH,0ah
    LEA DX,tampung_nim
    INT 21H
    PUSH DX
    
    MOV AH,09H
    LEA DX,jenjang
    INT 21H     
    MOV AH,0ah
    LEA DX,tampung_jenjang
    INT 21H
    PUSH DX
    
    MOV AH,09H
    LEA DX,fakultas
    INT 21H   
    MOV AH,0ah
    LEA DX,tampung_fakultas
    INT 21H
    PUSH DX
    
    MOV AH,09H
    LEA DX,judul
    INT 21H
    MOV AH,0ah
    LEA DX,tampung_judul
    INT 21H
    PUSH DX
    
    INT 20H
    
END start
    