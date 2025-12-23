COMMENT=	GTK+ client for the Music Player Daemon

MODPY_DISTV=	1.7.3
GH_TAGNAME=	v${MODPY_DISTV}
GH_ACCOUNT=	multani
GH_PROJECT=	sonata
DISTNAME=	sonata-${MODPY_DISTV}
EPOCH=		1

CATEGORIES=	audio

HOMEPAGE=	http://www.nongnu.org/sonata/

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	devel/gettext,-tools

RUN_DEPENDS=	audio/py-mpd2 \
		audio/py-tagpy \
		devel/desktop-file-utils \
		devel/py-gobject3 \
		devel/xdg-utils \
		x11/dbus-python

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=	x11/gtk+3

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/sonata/pixmaps/sonata.png \
		${PREFIX}/share/pixmaps
	mv ${PREFIX}/share/man/* ${PREFIX}/man/
	rm -r ${PREFIX}/share/{man,sonata}

.include <bsd.port.mk>
