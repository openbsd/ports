# $OpenBSD: Makefile,v 1.2 2000/01/07 18:09:36 brad Exp $
# $FreeBSD: Makefile,v 1.26 2000/01/05 07:11:48 jseger Exp $

DISTNAME=	tcl8.2.3
PKGNAME=	tcl-8.2.3
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_TCLTK}
MASTER_SITE_SUBDIR= tcl8_2

NEED_VERSION=	1.92

MAINTAINER=	angelos@openbsd.org

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.if (${MACHINE_ARCH} == "mips")
CONFIGURE_ARGS+= --disable-load
.endif
CONFIGURE_ENV=	PORTSDIR=${PORTSDIR}

WRKSRC=	${WRKDIR}/${DISTNAME}/unix

post-install:
	@${LDCONFIG} -m ${PREFIX}/lib

test:	build
	@cd ${WRKSRC} && make test

.include <bsd.port.mk>
