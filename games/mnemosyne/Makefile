COMMENT=	flash-card tool which optimises your learning process

MODPY_EGG_VERSION = 2.9
DISTNAME=	Mnemosyne-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:L}
CATEGORIES=	games education
REVISION=	1

HOMEPAGE=	https://www.mnemosyne-proj.org/

# GPLv2
PERMIT_PACKAGE=	Yes

SITES=		${SITE_SOURCEFORGE:=mnemosyne-proj/}

MODULES=	lang/python

# build needs some of the py-qt5 tools; pull them in via
# py-qtwebengine so that build fails early on arches where
# qtwebengine isn't available
BUILD_DEPENDS=	www/py-qtwebengine${MODPY_FLAVOR}

MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	x11/py-qt5${MODPY_FLAVOR}>=5.6 \
		www/py-qtwebengine${MODPY_FLAVOR} \
		graphics/py-Pillow${MODPY_FLAVOR} \
		graphics/py-matplotlib${MODPY_FLAVOR} \
		www/py-cheroot${MODPY_FLAVOR}>=5 \
		www/py-webob${MODPY_FLAVOR}>=1.4 \
		security/py-argon2-cffi${MODPY_FLAVOR} \
		devel/desktop-file-utils

NO_TEST=	Yes

MODPY_ADJ_FILES= mnemosyne/pyqt_ui/mnemosyne

FIX_CRLF_FILES=	setup.py \
                mnemosyne/libmnemosyne/__init__.py \
                mnemosyne/pyqt_ui/mnemosyne

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/mnemosyne.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/pixmaps/mnemosyne.png \
		${PREFIX}/share/pixmaps

.include <bsd.port.mk>
