# $OpenBSD: Makefile,v 1.2 2013/03/10 19:20:06 jasper Exp $

COMMENT=	library for parsing expression grammars for Erlang

VERSION=	1.6.0
DISTNAME=	neotoma-${VERSION}
PKGNAME=	erl-${DISTNAME}
REVISION=	0
CATEGORIES=	textproc

HOMEPAGE=	https://github.com/seancribbs/neotoma

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/erlang

CONFIGURE_STYLE=rebar

REGRESS_TARGET=	tests

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,extra,priv,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/extra/* ${ERL_LIBDIR}/extra/
	${INSTALL_DATA} ${WRKSRC}/priv/* ${ERL_LIBDIR}/priv/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
