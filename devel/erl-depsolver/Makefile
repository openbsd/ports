# $OpenBSD: Makefile,v 1.1.1.1 2013/03/08 11:53:27 jasper Exp $

COMMENT=	Erlang dependency solver

VERSION=	0.1.0a
DISTNAME=	depsolver-${VERSION}
PKGNAME=	erl-${DISTNAME}
CATEGORIES=	devel lang/erlang

HOMEPAGE=	https://github.com/opscode/depsolver

# Apache2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/
TAR=		${LOCALBASE}/bin/gtar

USE_GMAKE=	Yes

ALL_TARGET=	compile
REGRESS_TARGET=	eunit

ERL_LIBDIR=	${PREFIX}/lib/erlang/lib/${DISTNAME}
SUBST_VARS+=	VERSION

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src

.include <bsd.port.mk>
