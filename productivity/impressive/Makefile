COMMENT =		stylish PDF presentation generator

MODPY_EGG_VERSION =	0.13.2
DISTNAME =		Impressive-${MODPY_EGG_VERSION}
PKGNAME =		impressive-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		productivity
HOMEPAGE =		https://impressive.sourceforge.net/
SITES =			${SITE_SOURCEFORGE:=impressive/}

# GPLv2 only
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
NO_BUILD =		Yes
NO_TEST =		Yes

RUN_DEPENDS =		devel/pygame${MODPY_FLAVOR} \
			devel/xdg-utils \
			graphics/py-Pillow${MODPY_FLAVOR} \
			graphics/py-opengl${MODPY_FLAVOR} \
			print/poppler,-utils \
			textproc/pdftk \
			x11/mplayer

MODPY_ADJ_FILES =	impressive.py

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/impressive.py ${PREFIX}/bin/impressive
	${INSTALL_MAN} ${WRKSRC}/impressive.1 ${PREFIX}/man/man1/impressive.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/impressive
	${INSTALL_DATA} ${WRKSRC}/demo.pdf ${PREFIX}/share/examples/impressive/

.include <bsd.port.mk>
