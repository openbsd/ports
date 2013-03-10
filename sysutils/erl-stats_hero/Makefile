# $OpenBSD: Makefile,v 1.3 2013/03/10 19:35:27 jasper Exp $

COMMENT=	general purpose stats and collection for Erlang

VERSION=	0.0.1
DISTNAME=	stats_hero-${VERSION}
PKGNAME=	erl-${DISTNAME}
REVISION=	0
CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/opscode/stats_hero

# Apache2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/erlang

RUN_DEPENDS=	devel/erl-meck \
		textproc/erl-edown

ALL_TARGET=	compile

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/stats_hero.app.src

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
