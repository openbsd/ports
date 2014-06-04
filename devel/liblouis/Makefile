# $OpenBSD: Makefile,v 1.15 2014/06/04 12:05:32 rpointel Exp $

COMMENT=	braille translator, back-translator and formatter

DISTNAME=	liblouis-2.5.4

SHARED_LIBS +=  louis                3.0      # 6.0

REVISION = 0

CATEGORIES=	devel

HOMEPAGE=	http://www.liblouis.org/

# GPLv3 - LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	http://www.liblouis.org/downloads/

MODULES=	lang/python

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
MODPY_ADJ_FILES=tools/lou_harnessGenerator

BUILD_DEPENDS=	devel/help2man

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-packager="OpenBSD Ports"

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${MODPY_SITEPKG}/louis
	${INSTALL_DATA} ${WRKSRC}/python/louis/__init__.py \
		${WRKINST}/${MODPY_SITEPKG}/louis
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKINST}${MODPY_SITEPKG}

.include <bsd.port.mk>
