# New ports collection makefile for:	tcl8.0
# Version required:	8.0
# Date created:		2 December 1997
# Whom:			niklas
#
# $NetBSD: Makefile,v 1.4 1997/12/01 16:50:49 pst Exp $
# $FreeBSD: Makefile,v 1.4 1997/12/01 16:50:49 pst Exp $
#

DISTNAME=	tcl8.0p2
PKGNAME=	tcl-8.0.2
CATEGORIES=	lang tcl80
MASTER_SITES=	ftp://ftp.sunlabs.com/pub/tcl/

MAINTAINER=	niklas@openbsd.org

WRKSRC=		${WRKDIR}/tcl8.0/unix
GNU_CONFIGURE=	yes
.if (${MACHINE_ARCH} != "alpha")
CONFIGURE_ARGS=	--enable-shared
.endif
.if (${MACHINE_ARCH} == "mips")
CONFIGURE_ARGS=	--disable-load
.endif
CONFIGURE_ENV=  PORTSDIR=${PORTSDIR}

post-install:
.if (${MACHINE_ARCH} != "alpha")
.if (${MACHINE_ARCH} == "mips")
	${LDCONFIG} -n ${PREFIX}/lib
.else
	${LDCONFIG} -m ${PREFIX}/lib
.endif
.endif

test:
	cd ${WRKSRC} && ${MAKE} test

.include <bsd.port.mk>
