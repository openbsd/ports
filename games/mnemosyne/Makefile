COMMENT=	flash-card tool which optimises your learning process

MODPY_DISTV =	2.9
DISTNAME=	Mnemosyne-${MODPY_DISTV}
PKGNAME=	${DISTNAME:L}
CATEGORIES=	games education
REVISION=	2

HOMEPAGE=	https://www.mnemosyne-proj.org/

# GPLv2
PERMIT_PACKAGE=	Yes

SITES=		${SITE_SOURCEFORGE:=mnemosyne-proj/}

MODULES=	lang/python

# build needs some of the py-qt5 tools; pull them in via
# py-qtwebengine so that build fails early on arches where
# qtwebengine isn't available
BUILD_DEPENDS=	www/py-qtwebengine

MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	x11/py-qt5>=5.6 \
		www/py-qtwebengine \
		graphics/py-Pillow \
		graphics/py-matplotlib \
		www/py-cheroot>=5 \
		www/py-webob>=1.4 \
		security/py-argon2-cffi \
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
