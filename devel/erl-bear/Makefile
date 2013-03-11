# $OpenBSD: Makefile,v 1.6 2013/03/11 13:02:16 jasper Exp $

COMMENT=	set of statistics functions for Erlang

VERSION=	0.1.3
DISTNAME=	bear-${VERSION}
PKGNAME=	erl-${DISTNAME}
REVISION=	0
CATEGORIES=	devel

HOMEPAGE=	https://github.com/boundary/bear

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/erlang

ERL_APP_SUBST=	Yes

NO_TEST=	Yes

do-build:
	cd ${WRKSRC} && ${REBAR_BIN} compile

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
