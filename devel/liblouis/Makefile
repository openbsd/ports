# $OpenBSD: Makefile,v 1.28 2019/05/13 22:26:37 ajacoutot Exp $

COMMENT=	braille translator, back-translator and formatter

V=		3.9.0
DISTNAME=	liblouis-${V}

SHARED_LIBS +=  louis                8.0      # 17.1

CATEGORIES=	devel

HOMEPAGE=	http://www.liblouis.org/

# GPLv3 - LGPLv3 - LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	https://github.com/liblouis/liblouis/releases/download/v${V}/

MODULES=	lang/python

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=	devel/help2man

# lou_maketable
RUN_DEPENDS +=	shells/bash

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-packager="OpenBSD Ports" \
		--enable-ucs4

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${MODPY_SITEPKG}/louis
	${INSTALL_DATA} ${WRKSRC}/python/louis/__init__.py \
		${WRKINST}/${MODPY_SITEPKG}/louis
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKINST}${MODPY_SITEPKG}

.include <bsd.port.mk>
