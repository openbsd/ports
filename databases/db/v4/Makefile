# $OpenBSD: Makefile,v 1.8 2004/03/07 18:55:21 wilfried Exp $

REVISION=	4
VERSION=	${REVISION}.2.52
PKGNAME=	${DISTNAME}p1

MASTER_SITES0=	${MASTER_SITES:S/snapshot/${VERSION}/}
PATCHFILES=	patch.${VERSION}.1:0 \
		patch.${VERSION}.2:0

CONFIGURE_STYLE=gnu

DEST_SUBDIR=	${REVISION}

.if ${MACHINE_ARCH} == "powerpc"                                                    
CONFIGURE_ARGS+=--enable-posixmutexes                                       
.endif                                                                              

.include <bsd.port.mk>
