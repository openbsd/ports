# $OpenBSD: Makefile,v 1.4 2013/03/10 19:35:26 jasper Exp $

COMMENT=	Erlang dependency solver

VERSION=	0.1.0a
DISTNAME=	depsolver-${VERSION}
PKGNAME=	erl-${DISTNAME}
REVISION=	1
CATEGORIES=	devel

HOMEPAGE=	https://github.com/opscode/depsolver

# Apache2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/erlang

ALL_TARGET=	compile
MODERL_REGRESS= eunit

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src

.include <bsd.port.mk>
