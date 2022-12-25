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
    