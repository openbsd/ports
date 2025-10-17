COMMENT=	flash-card tool which optimises your learning process

MODPY_DISTV =	2.10.1.2
PKGNAME=	${DISTNAME:L}
CATEGORIES=	games education

GH_ACCOUNT=	mnemosyne-proj
GH_PROJECT=	mnemosyne
GH_TAGNAME=	2.11

HOMEPAGE=	https://www.mnemosyne-proj.org/

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

USE_GMAKE=	Yes

# build needs some of the py-qt6 tools; pull them in via
# py-qtwebengine so that build fails early on arches where
# qtwebengine isn't available
BUILD_DEPENDS=	www/py-qt6webengine \
		textproc/py-sphinx

MODPY_PYBUILD=	poetry-core

RUN_DEPENDS=	x11/py-qt6 \
		www/py-qt6webengine \
		graphics/py-Pillow \
		graphics/py-matplotlib \
		www/py-cheroot>=5 \
		www/py-webob>=1.4 \
		textproc/py-gTTS \
		security/py-argon2-cffi \
		devel/desktop-file-utils

NO_TEST=	Yes

MODPY_ADJ_FILES= mnemosyne/pyqt_ui/mnemosyne

FIX_CRLF_FILES=	setup.py \
                mnemosyne/libmnemosyne/__init__.py \
                mnemosyne/pyqt_ui/mnemosyne

post-extract:
	ln -sf /usr/local/bin/gmake ${WRKDIR}/bin/make

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/mnemosyne.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/pixmaps/mnemosyne.png \
		${PREFIX}/share/pixmaps

.include <bsd.port.mk>
