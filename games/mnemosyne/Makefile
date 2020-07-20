# $OpenBSD: Makefile,v 1.41 2020/07/20 13:35:05 kirby Exp $

COMMENT=	flash-card tool which optimises your learning process

MODPY_EGG_VERSION = 2.6.1
DISTNAME=	Mnemosyne-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:L}
CATEGORIES=	games education

HOMEPAGE=	https://www.mnemosyne-proj.org/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mnemosyne-proj/}

MODULES=	lang/python
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

MODPY_SETUPTOOLS=yes

RUN_DEPENDS=	x11/py-qt5,python3 \
		textproc/py-xml \
		graphics/py-Pillow,python3 \
		graphics/py-matplotlib,python3 \
		www/py-cheroot,python3 \
		www/py-webob,python3>=1.3.1 \
		www/py-qtwebengine \
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

pre-patch:
	@cd ${WRKSRC} && perl -i -pe 's/\r$$//' \
		setup.py

.include <bsd.port.mk>
