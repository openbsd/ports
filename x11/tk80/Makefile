# $OpenBSD: Makefile,v 1.13 1999/05/30 23:49:35 brad Exp $
# $FreeBSD: Makefile,v 1.7 1997/12/01 16:50:58 pst Exp $

DISTNAME=	tk8.0.5
PKGNAME=	tk-8.0.5
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_TCLTK}
MASTER_SITE_SUBDIR= tcl8_0

NEED_VERSION=	1.92

SEPARATE_BUILD=	concurrent
MAINTAINER=	niklas@openbsd.org

LIB_DEPENDS=	tcl80.1.5:${PORTSDIR}/lang/tcl80

WRKSRC=		${WRKDIR}/tk8.0.5/unix
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	PORTSDIR=${PORTSDIR} 

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

test:
	@cd ${WRKBUILD}; make test

.include <bsd.port.mk>
