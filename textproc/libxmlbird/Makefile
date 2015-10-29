# $OpenBSD: Makefile,v 1.7 2015/10/29 08:47:21 jasper Exp $

COMMENT =	XML parser written in Vala
DISTNAME =	libxmlbird-1.0.7
CATEGORIES =	textproc

SHARED_LIBS +=	xmlbird 0.0			# 1.0.6

HOMEPAGE =	http://birdfont.org/xmlbird.php

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://birdfont.org/xmlbird-releases/
EXTRACT_SUFX =		.tar.xz

WANTLIB += glib-2.0

MODULES =		devel/gettext \
			lang/python
MODPY_ADJ_FILES =       configure install.py

BUILD_DEPENDS =		devel/py-doit \
			lang/vala
LIB_DEPENDS =		devel/glib2

TEST_DEPENDS =		${BASE_PKGPATH}

CONFIGURE_STYLE =	simple

SUBST_VARS +=		DESTDIR

pre-configure:
	sed -i "s,bash,sh,g" ${WRKSRC}/scripts/run.py
	${SUBST_CMD} ${WRKSRC}/dodo.py ${WRKSRC}/configure ${WRKSRC}/install.py

do-build:
	cd ${WRKSRC} && ${LOCALBASE}/bin/doit libxmlbird libxmlbird_pkgconfig

do-install:
	cd ${WRKSRC} && ./install.py

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/doit test

.include <bsd.port.mk>
