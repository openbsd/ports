# New ports collection makefile for:	tcl8.0
# Version required:	8.0
# Date created:		2 December 1997
# Whom:			niklas
#
# $OpenBSD: Makefile,v 1.6 1998/11/03 15:43:16 niklas Exp $
# $FreeBSD: Makefile,v 1.4 1997/12/01 16:50:49 pst Exp $
#

DISTNAME=	tcl8.0.3
PKGNAME=	tcl-8.0.3
CATEGORIES=	lang tcl80
MASTER_SITES=	ftp://ftp.scriptics.com/pub/tcl/tcl8_0/

MAINTAINER=	niklas@openbsd.org

WRKSRC=		${WRKDIR}/tcl8.0.3/unix
GNU_CONFIGURE=	yes
.if (${MACHINE_ARCH} != "alpha")
CONFIGURE_ARGS=	--enable-shared
.endif
.if (${MACHINE_ARCH} == "mips")
CONFIGURE_ARGS=	--disable-load
.endif
CONFIGURE_ENV=  PORTSDIR=${PORTSDIR}

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

test:
	cd ${WRKSRC} && ${MAKE} test

.include <bsd.port.mk>
