# $OpenBSD: Makefile,v 1.16 2012/07/20 12:03:50 jasper Exp $

VERSION=	1.8
DISTNAME=	automake-${VERSION}.5
REVISION=	7
PKGSPEC=	automake->=${VERSION},<1.9

AUTOCONF_VERSION=	2.59

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS}

SUFFIX=			-${VERSION}
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV +=	AUTOCONF_VERSION=${AUTOCONF_VERSION}
MAKE_FLAGS+=		MAKEINFO="makeinfo --no-split" \
			pkgvdatadir=${PREFIX}/share/automake${SUFFIX} \
			APIVERSION=${VERSION}

REGRESS_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
			devel/libtool
REGRESS_FLAGS=		AUTOCONF_VERSION=${AUTOCONF_VERSION}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/doc/automake.texi

post-install:
	cd ${PREFIX}/info && mv automake.info automake${SUFFIX}.info

.include <bsd.port.mk>
