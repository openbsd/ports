# $OpenBSD: Makefile,v 1.1.1.1 2006/10/21 16:58:00 steven Exp $

LIB=	amd

SRCS=	amd_global.c
.for s in ${CSRC}
SRCS+=	amd_i_${s}.c amd_l_${s}.c
.endfor

.include <bsd.lib.mk>
