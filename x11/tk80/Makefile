# New ports collection makefile for:	tk8.0
# Version required:	tk8.0
# Date created:		2 December 1997
# Whom:			niklas
#
# $OpenBSD: Makefile,v 1.4 1998/11/03 17:49:39 niklas Exp $
# $FreeBSD: Makefile,v 1.7 1997/12/01 16:50:58 pst Exp $
#

DISTNAME=	tk8.0.3
PKGNAME=	tk-8.0.3
CATEGORIES=	x11 tk80
MASTER_SITES=	ftp://ftp.scriptics.com/pub/tcl/tcl8_0

MAINTAINER=	niklas@openbsd.org

LIB_DEPENDS=	tcl80\\.1\\.3:${PORTSDIR}/lang/tcl80

WRKSRC=		${WRKDIR}/tk8.0.3/unix
GNU_CONFIGURE=	yes
.if (${MACHINE_ARCH} != "alpha")
CONFIGURE_ARGS=	--enable-shared
.endif
CONFIGURE_ENV=  PORTSDIR=${PORTSDIR} PATH=${PATH}:${X11BASE}/bin

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

test:
	cd ${WRKSRC}; make test

.include <bsd.port.mk>
