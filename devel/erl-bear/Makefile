# $OpenBSD: Makefile,v 1.1.1.1 2013/03/08 11:53:05 jasper Exp $

COMMENT=	set of statistics functions for Erlang

VERSION=	0.1.3
DISTNAME=	bear-${VERSION}
PKGNAME=	erl-${DISTNAME}
CATEGORIES=	devel lang/erlang

HOMEPAGE=	https://github.com/boundary/bear

# Apache2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/
TAR=		${LOCALBASE}/bin/gtar

BUILD_DEPENDS=	archivers/gtar \
		devel/rebar
RUN_DEPENDS=	lang/erlang

NO_REGRESS=	Yes
ERL_LIBDIR=	${PREFIX}/lib/erlang/lib/${DISTNAME}
SUBST_VARS+=	VERSION

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/bear.app.src

do-build:
	cd ${WRKSRC} && ${LOCALBASE}/bin/rebar compile

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
