# $FreeBSD: Makefile,v 1.32 2000/01/05 07:12:09 jseger Exp $
# $OpenBSD: Makefile,v 1.2 2000/01/09 05:22:51 brad Exp $

DISTNAME=	tk8.2.3
PKGNAME=	tk-8.2.3
CATEGORIES=	x11 tk82
MASTER_SITES=	${MASTER_SITE_TCLTK}
MASTER_SITE_SUBDIR= tcl8_2

NEED_VERSION=	1.92

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	tcl82.1.3:${PORTSDIR}/lang/tcl82

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --with-tcl="${PREFIX}/lib/tcl8.2"
CONFIGURE_ENV=  PORTSDIR=${PORTSDIR}

WRKSRC=	${WRKDIR}/${DISTNAME}/unix

post-install:
	@${LDCONFIG} -m ${PREFIX}/lib

test:	build
	@cd ${WRKSRC} && make test

.include <bsd.port.mk>
