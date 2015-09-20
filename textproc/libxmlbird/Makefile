# $OpenBSD: Makefile,v 1.5 2015/09/20 12:03:54 jasper Exp $

COMMENT =	XML parser written in Vala
DISTNAME =	libxmlbird-1.0.6
CATEGORIES =	textproc
REVISION =	1

SHARED_LIBS +=	xmlbird 0.0			# 1.0.6

HOMEPAGE =	http://birdfont.org/xmlbird.php

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://birdfont.org/xmlbird-releases/
EXTRACT_SUFX =		.tar.xz

MODULES =		lang/python
MODPY_ADJ_FILES =       configure

BUILD_DEPENDS =		devel/py-doit \
			lang/vala

TEST_DEPENDS =		${BASE_PKGPATH}

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
