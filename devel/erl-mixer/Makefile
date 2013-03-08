# $OpenBSD: Makefile,v 1.1.1.1 2013/03/08 11:59:20 jasper Exp $

COMMENT=	mix in functions from other modules

VERSION=	0.1.1
DISTNAME=	mixer-${VERSION}
PKGNAME=	erl-${DISTNAME}
CATEGORIES=	devel lang/erlang

HOMEPAGE=	https://github.com/opscode/mixer

# Apache2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/
TAR=		${LOCALBASE}/bin/gtar

BUILD_DEPENDS=	archivers/gtar

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
