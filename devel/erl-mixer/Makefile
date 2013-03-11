# $OpenBSD: Makefile,v 1.5 2013/03/11 12:39:23 jasper Exp $

COMMENT=	mix in functions from other modules

VERSION=	0.1.1
DISTNAME=	mixer-${VERSION}
PKGNAME=	erl-${DISTNAME}
REVISION=	1
CATEGORIES=	devel

HOMEPAGE=	https://github.com/opscode/mixer

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/erlang

ALL_TARGET=	compile

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src

.include <bsd.port.mk>
