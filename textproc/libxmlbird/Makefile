# $OpenBSD: Makefile,v 1.3 2015/08/25 13:18:27 sthen Exp $

COMMENT =	XML parser written in Vala
DISTNAME =	libxmlbird-1.0.6
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	textproc
REVISION =	0

SHARED_LIBS +=	xmlbird 0.0			# 1.0.5

HOMEPAGE =	http://birdfont.org/xmlbird.php

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://birdfont.org/xmlbird-releases/

MODULES =	lang/python
MODPY_ADJ_FILES =       configure

BUILD_DEPENDS =	devel/py-doit \
		lang/vala

# 'make test' will fail if not already installed.
TEST_DEPENDS =	textproc/libxmlbird

CONFIGURE_STYLE =	simple

pre-configure:
	perl -pi -e "s,bash,sh,g" ${WRKSRC}/scripts/run.py
	${SUBST_CMD} ${WRKSRC}/dodo.py

do-build:
	cd ${WRKSRC} && ${LOCALBASE}/bin/doit

do-install:
	${INSTALL_DATA} ${WRKSRC}/build/xmlbird.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/build/libxmlbird.so.${LIBxmlbird_VERSION} \
		${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/build/xmlbird.pc \
		${PREFIX}/lib/pkgconfig
	${INSTALL_DATA_DIR} ${PREFIX}/share/vala/vapi
	${INSTALL_DATA} ${WRKSRC}/build/xmlbird.vapi \
		${PREFIX}/share/vala/vapi

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/doit test

.include <bsd.port.mk>
