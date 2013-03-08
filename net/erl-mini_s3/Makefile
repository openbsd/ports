# $OpenBSD: Makefile,v 1.1.1.1 2013/03/08 12:03:56 jasper Exp $

COMMENT=	s3 client API for Erlang

VERSION=	0.0.1
DISTNAME=	mini_s3-${VERSION}
PKGNAME=	erl-${DISTNAME}
CATEGORIES=	net lang/erlang

HOMEPAGE=	https://github.com/opscode/mini_s3

# Apache2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/

USE_GMAKE=	Yes

RUN_DEPENDS=	net/erl-ibrowse

ALL_TARGET=	compile
REGRESS_TARGET=	eunit

ERL_LIBDIR=	${PREFIX}/lib/erlang/lib/${DISTNAME}
SUBST_VARS+=	VERSION

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src

.include <bsd.port.mk>
