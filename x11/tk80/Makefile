# New ports collection makefile for:	tk8.0
# Version required:	tk8.0
# Date created:		2 December 1997
# Whom:			niklas
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/02 23:44:35 niklas Exp $
# $FreeBSD: Makefile,v 1.7 1997/12/01 16:50:58 pst Exp $
#

DISTNAME=	tk8.0p2
PKGNAME=	tk-8.0.2
CATEGORIES=	x11 tk80
MASTER_SITES=	ftp://ftp.sunlabs.com/pub/tcl/

MAINTAINER=	niklas@openbsd.org

LIB_DEPENDS=	tcl80\\.1\\.2:${PORTSDIR}/lang/tcl80

WRKSRC=		${WRKDIR}/tk8.0/unix
GNU_CONFIGURE=	yes
.if (${MACHINE_ARCH} != "alpha")
CONFIGURE_ARGS=	--enable-shared
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
	cd ${WRKSRC}; make test

.include <bsd.port.mk>
