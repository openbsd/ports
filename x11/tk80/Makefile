# $OpenBSD: Makefile,v 1.6 1999/02/18 02:37:41 marc Exp $
# $FreeBSD: Makefile,v 1.7 1997/12/01 16:50:58 pst Exp $
#

DISTNAME=	tk8.0.4
PKGNAME=	tk-8.0.4
CATEGORIES=	x11 tk80
MASTER_SITES=	ftp://ftp.scriptics.com/pub/tcl/tcl8_0/

MAINTAINER=	niklas@openbsd.org

LIB_DEPENDS=	tcl80.1.4:${PORTSDIR}/lang/tcl80

WRKSRC=		${WRKDIR}/tk8.0.4/unix
GNU_CONFIGURE=	yes
.if !defined(NO_SHARED_LIBS)
CONFIGURE_ARGS=	--enable-shared
.endif
CONFIGURE_ENV=  PORTSDIR=${PORTSDIR} PATH=${PATH}:${X11BASE}/bin

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

test:
	cd ${WRKSRC}; make test

.include <bsd.port.mk>
