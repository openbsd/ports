COMMENT =		desktop wiki

MODPY_DISTV =	0.75.2
DISTNAME =		zim-${MODPY_DISTV}
REVISION =		2

CATEGORIES =		productivity

HOMEPAGE =		https://zim-wiki.org/

MAINTAINER =		Sebastian Benoit <benno@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

SITES =			https://zim-wiki.org/downloads/

NO_TEST =		Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

COMMON_DEPENDS =	devel/py-gobject3 \
			devel/py-xdg \
			devel/xdg-utils \
			x11/gtk+3

BUILD_DEPENDS =		${COMMON_DEPENDS}

RUN_DEPENDS =		${COMMON_DEPENDS} \
			devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+4,-guic

PORTHOME =		${WRKDIR}
MAKE_ENV +=		XDG_RUNTIME_DIR=${PORTHOME}

post-install:
	cp -r ${WRKSRC}/xdg/hicolor ${PREFIX}/share/icons/

.include <bsd.port.mk>
