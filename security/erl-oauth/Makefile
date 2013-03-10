# $OpenBSD: Makefile,v 1.2 2013/03/10 19:20:06 jasper Exp $

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/erlang

CONFIGURE_STYLE=rebar

NO_REGRESS=	Yes
ERL_LIBDIR=	${PREFIX}/lib/erlang/lib/erl-oauth-${VERSION}

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
