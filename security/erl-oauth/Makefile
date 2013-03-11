# $OpenBSD: Makefile,v 1.4 2013/03/11 11:41:24 espie Exp $

COMMENT=	Erlang OAuth implementation

# git clone as of 2b796ea7973c0f38aad569bf2506bd8026eca004
VERSION=	0.1
DISTNAME=	erlang-oauth-${VERSION}
PKGNAME=	${DISTNAME:S/erlang/erl/}
REVISION=	1
CATEGORIES=	security

HOMEPAGE=	https://github.com/opscode/erlang-oauth

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/erlang

NO_TEST=	Yes
ERL_LIBDIR=	${PREFIX}/lib/erlang/lib/erl-oauth-${VERSION}

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
