# $OpenBSD: Makefile,v 1.2 2013/03/10 17:40:52 jasper Exp $

COMMENT=	mocking library for Erlang

VERSION=	0.7.2
DISTNAME=	meck-${VERSION}
PKGNAME=	erl-${DISTNAME}
CATEGORIES=	devel lang/erlang

HOMEPAGE=	https://github.com/eproxus/meck

# Apache2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/
TAR=		${LOCALBASE}/bin/gtar

BUILD_DEPENDS=	archivers/gtar \
		devel/rebar

USE_GMAKE=	Yes

ALL_TARGET=	compile
REGRESS_TARGET=	test
PORTHOME=	/tmp/

ERL_LIBDIR=	${PREFIX}/lib/erlang/lib/${DISTNAME}
SUBST_VARS+=	VERSION

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src

.include <bsd.port.mk>
