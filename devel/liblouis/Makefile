# $OpenBSD: Makefile,v 1.18 2016/10/31 16:39:25 ajacoutot Exp $

COMMENT=	braille translator, back-translator and formatter

V=		3.0.0
DISTNAME=	liblouis-${V}

SHARED_LIBS +=  louis                5.0      # 12.0

CATEGORIES=	devel

HOMEPAGE=	http://www.liblouis.org/

# GPLv3 - LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	https://github.com/liblouis/liblouis/releases/download/v${V}/

MODULES=	lang/python

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
MODPY_ADJ_FILES=tools/lou_harnessGenerator

BUILD_DEPENDS=	devel/help2man

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-packager="OpenBSD Ports"

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${MODPY_SITEPKG}/louis
	${INSTALL_DATA} ${WRKSRC}/python/louis/__init__.py \
		${WRKINST}/${MODPY_SITEPKG}/louis
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKINST}${MODPY_SITEPKG}

.include <bsd.port.mk>
