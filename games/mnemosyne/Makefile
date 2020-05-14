# $OpenBSD: Makefile,v 1.40 2020/05/14 12:36:46 jca Exp $

COMMENT=	flash-card tool which optimises your learning process

# Newer versions moved to Qt5 and need qtwebengine
MODPY_EGG_VERSION = 2.3.6
DISTNAME=	Mnemosyne-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:L}
CATEGORIES=	games education
REVISION=	3

HOMEPAGE=	https://www.mnemosyne-proj.org/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mnemosyne-proj/}

MODULES=	lang/python

MODPY_SETUPTOOLS=yes

RUN_DEPENDS=	x11/py-qt4 \
		textproc/py-xml \
		graphics/py-Pillow \
		graphics/py-matplotlib \
		www/py-cheroot \
		www/py-webob>=1.3.1 \
		devel/desktop-file-utils

NO_TEST=	Yes

MODPY_ADJ_FILES=	mnemosyne/pyqt_ui/mnemosyne

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/mnemosyne.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/pixmaps/mnemosyne.png \
		${PREFIX}/share/pixmaps

.include <bsd.port.mk>
