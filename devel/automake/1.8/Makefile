VERSION=	1.8
DISTNAME=	automake-${VERSION}.5
REVISION=	9
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

TEST_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
			devel/libtool
TEST_FLAGS=		AUTOCONF_VERSION=${AUTOCONF_VERSION}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/doc/automake.texi

post-install:
	cd ${PREFIX}/info && mv automake.info automake${SUFFIX}.info

.include <bsd.port.mk>
