;Copyright (C) 1997-2001 ZSNES Team ( zsknight@zsnes.com / _demo_@zsnes.com )
;
;This program is free software; you can redistribute it and/or
;modify it under the terms of the GNU General Public License
;as published by the Free Software Foundation; either
;version 2 of the License, or (at your option) any later
;version.
;
;This program is distributed in the hope that it will be useful,
;but WITHOUT ANY WARRANTY; without even the implied warranty of
;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;GNU General Public License for more details.
;
;You should have received a copy of the GNU General Public License
;along with this program; if not, write to the Free Software
;Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

%include "macros.mac"

ALIGN 32

EXTSYM SurfaceX,SurfaceY
EXTSYM ScreenPtr,SurfBufD
EXTSYM BitConv32Ptr
EXTSYM pitch

NEWSYM SDLDrawAsmStart

SECTION .text

NEWSYM ClearWin16
        pushad
        xor  eax,eax
        mov  edi, [SurfBufD]
        xor  ebx,ebx
.Blank2: 
        mov  ecx, [SurfaceX]
        rep stosw
        mov  edx, [SurfaceX]
        add  edi, [pitch]
        shl  edx,1
        add  ebx,1
        sub  edi,edx
        cmp  ebx, [SurfaceY]
        jne .Blank2
        popad
        ret

NEWSYM ClearWin32
        pushad
        xor  eax,eax
        mov  edi, [SurfBufD]
        xor  ebx,ebx
.Blank3: 
        mov  ecx, [SurfaceX]
        rep stosd
        add  edi, [pitch]
        sub  edi, [SurfaceX]
        sub  edi, [SurfaceX]
        sub  edi, [SurfaceX]
        sub  edi, [SurfaceX]
        add  ebx,1
        cmp  ebx, [SurfaceY]
        jne .Blank3
        popad
        ret

NEWSYM DrawWin256x224x16
        pushad
        push  es
        mov  ax,ds
        mov  es,ax
        xor  eax,eax
        mov  esi, [ScreenPtr]
        mov  edi, [SurfBufD]
.Copying3: 
        mov  ecx,32
.CopyLoop: 
        movq mm0,[esi]
        movq mm1,[esi+8]
        movq [edi],mm0
        movq [edi+8],mm1
        add  esi,16
        add  edi,16
        dec  ecx
        jnz .CopyLoop
        inc  eax
        add  edi, [pitch]
        sub  edi,512
        add  esi,64
        cmp  eax,223
        jne .Copying3
        xor  eax,eax
        mov  ecx,128
        rep stosd
        pop  es
        emms
        popad
        ret

NEWSYM DrawWin256x224x32
        pushad
        push  es
        mov  ax,ds
        mov  es,ax
        xor  eax,eax
        mov  ebx, [BitConv32Ptr]
        mov  esi, [ScreenPtr]
        mov  edi, [SurfBufD]
.Copying32b: 
        mov  ecx,256
        push  eax
        xor  eax,eax
.CopyLoop32b: 
        mov  ax, [esi]
        add  esi,2
        mov  edx, [ebx+eax*4]
        mov  [edi],edx
        add  edi,4
        dec  ecx
        jnz .CopyLoop32b
        pop  eax
        inc  eax
        add  edi, [pitch]
        sub  edi,1024
        add  esi,64
        cmp  eax,223
        jne .Copying32b
        pop  es
        popad
        ret

NEWSYM DrawWin320x240x16
        pushad
        push  es
        mov  ax,ds
        mov  es,ax
        xor  eax,eax
        xor  ebx,ebx
        mov  esi, [ScreenPtr]
        mov  edi, [SurfBufD]
.Blank1MMX: 
        mov  ecx,160
        rep stosd
        sub  edi,160
        add  edi, [pitch]
        add  ebx,1
        cmp  ebx,8
        jne .Blank1MMX
        xor  ebx,ebx
        pxor mm0,mm0
.Copying2MMX: 
        mov  ecx,4
.MMXLoopA: 
        movq [edi+0],mm0
        movq [edi+8],mm0
        add  edi,16
        dec  ecx
        jnz .MMXLoopA
        mov  ecx,32
.MMXLoopB: 
        movq mm1,[esi+0]
        movq mm2,[esi+8]
        movq [edi+0],mm1
        movq [edi+8],mm2
        add  esi,16
        add  edi,16
        dec  ecx
        jnz .MMXLoopB
        mov  ecx,4
.MMXLoopC: 
        movq [edi+0],mm0
        movq [edi+8],mm0
        add  edi,16
        dec  ecx
        jnz .MMXLoopC
        inc  ebx
        add  edi, [pitch]
        sub  edi,640
        add  esi,64
        cmp  ebx,223
        jne .Copying2MMX
        mov  ecx,128
        rep stosd
        pop  es
        emms
        popad
        ret

NEWSYM DrawWin512x448x32
        pushad
        push  es
        mov  ax,ds
        mov  es,ax
        xor  eax,eax
        mov  ebx, [BitConv32Ptr]
        mov  esi, [ScreenPtr]
        mov  edi, [SurfBufD]
.Copying32c: 
        mov  ecx,256
        push  eax
        xor  eax,eax
.CopyLoop32c: 
        mov  ax, [esi]
        add  esi,2
        mov  edx, [ebx+eax*4]
        mov  [edi],edx
        mov  [edi+4],edx
        add  edi,8
        loop .CopyLoop32c
        push  esi
        mov  esi,edi
        sub  esi, [pitch]
        mov  ecx,512
        rep movsd
        pop  esi
        pop  eax
        inc  eax
        add  esi,64
        cmp  eax,223
        jne .Copying32c
        pop  es
        popad
        ret

NEWSYM DrawWin640x480x32
        pushad
        push  es
        mov  ax,ds
        mov  es,ax
        xor  eax,eax
        mov  ebx, [BitConv32Ptr]
        mov  esi, [ScreenPtr]
        mov  edi, [SurfBufD]
        add  edi,20608
.Copying32d: 
        mov  ecx,256
        push  eax
        xor  eax,eax
.CopyLoop32d: 
        mov  ax, [esi]
        add  esi,2
        mov  edx, [ebx+eax*4]
        mov  [edi],edx
        mov  [edi+4],edx
        add  edi,8
        loop .CopyLoop32d
        add  edi,512
        push  esi
        mov  esi,edi
        sub  esi, [pitch]
        mov  ecx,512
        rep movsd
        pop  esi
        pop  eax
        inc  eax
        add  edi,512
        add  esi,64
        cmp  eax,223
        jne .Copying32d
        pop  es
        popad
        ret

NEWSYM SDLDrawAsmEnd
