# $OpenBSD: Makefile,v 1.10 1999/03/19 21:51:48 brad Exp $
# $FreeBSD: Makefile,v 1.7 1997/12/01 16:50:58 pst Exp $

DISTNAME=	tk8.0.5
PKGNAME=	tk-8.0.5
CATEGORIES=	x11 tk80

NEED_VERSION=	1.73

SEPARATE_BUILD=	concurrent
MAINTAINER=	niklas@openbsd.org

MASTER_SITES=	ftp://ftp.scriptics.com/pub/tcl/tcl8_0/

LIB_DEPENDS=	tcl80\\.1\\.5:${PORTSDIR}/lang/tcl80

WRKSRC=		${WRKDIR}/tk8.0.5/unix
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=${CONFIGURE_SHARED}
CONFIGURE_ENV=  PORTSDIR=${PORTSDIR} PATH=${PATH}:${X11BASE}/bin

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

test:
	cd ${WRKBUILD}; make test

.include <bsd.port.mk>
