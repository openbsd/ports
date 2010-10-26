# $OpenBSD: Makefile,v 1.1.1.1 2010/10/26 16:59:53 steven Exp $

LIB=	camd

SRCS=	camd_global.c
.for s in ${CSRC}
SRCS+=	camd_i_${s}.c camd_l_${s}.c
.endfor

.include <bsd.lib.mk>
