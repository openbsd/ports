# $OpenBSD: Makefile,v 1.17 2000/01/09 07:16:49 brad Exp $
# $FreeBSD: Makefile,v 1.7 1997/12/01 16:50:58 pst Exp $

DISTNAME=	tk8.0.5
PKGNAME=	tk-8.0.5
CATEGORIES=	x11 tk80
MASTER_SITES=	${MASTER_SITE_TCLTK}
MASTER_SITE_SUBDIR= tcl8_0

NEED_VERSION=	1.92

MAINTAINER=	niklas@openbsd.org

LIB_DEPENDS=	tcl80.1.5:${PORTSDIR}/lang/tcl80

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --with-tcl="${PREFIX}/lib/tcl8.0"
CONFIGURE_ENV=	PORTSDIR=${PORTSDIR} 

WRKSRC=	${WRKDIR}/${DISTNAME}/unix

post-install:
	@${LDCONFIG} -m ${PREFIX}/lib

test:	build
	@cd ${WRKBUILD} && make test

.include <bsd.port.mk>
