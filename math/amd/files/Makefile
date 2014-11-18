# $OpenBSD: Makefile,v 1.2 2014/11/18 08:09:07 pirofti Exp $

LIB=	amd

LDADD	+=	-L${LOCALBASE}/lib -lsuitesparseconfig

SRCS=	amd_global.c
.for s in ${CSRC}
SRCS+=	amd_i_${s}.c amd_l_${s}.c
.endfor

.include <bsd.lib.mk>
