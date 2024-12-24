COMMENT=	braille translator, back-translator and formatter

V=		3.32.0
DISTNAME=	liblouis-${V}

SHARED_LIBS +=  louis                8.3      # 20.20

CATEGORIES=	devel

HOMEPAGE=	https://liblouis.io/

# GPLv3 - LGPLv3 - LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += c

SITES=		https://github.com/liblouis/liblouis/releases/download/v${V}/

MODULES=	lang/python

USE_GMAKE=	Yes

DEBUG_PACKAGES=	${BUILD_PACKAGES}

BUILD_DEPENDS=	devel/help2man

# lou_maketable
RUN_DEPENDS +=	shells/bash

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	--with-packager="OpenBSD Ports" \
		--enable-ucs4

BUILD_DEPENDS +=	devel/m4
pre-configure:
	ln -sf ${LOCALBASE}/bin/gm4 ${WRKDIR}/bin/m4

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${MODPY_SITEPKG}/louis
	${INSTALL_DATA} ${WRKSRC}/python/louis/__init__.py \
		${WRKINST}/${MODPY_SITEPKG}/louis
	${MODPY_COMPILEALL} ${WRKINST}${MODPY_SITEPKG}

.include <bsd.port.mk>
