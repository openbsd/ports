# $OpenBSD: Makefile,v 1.36 2016/11/03 09:46:44 danj Exp $

COMMENT=	flash-card tool which optimises your learning process

MODPY_EGG_VERSION = 2.3.6
DISTNAME=	Mnemosyne-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:L}
CATEGORIES=	games education
REVISION=	0

HOMEPAGE=	http://www.mnemosyne-proj.org/

MAINTAINER =	Nils Reusse <n.reusse@hxgn.net>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mnemosyne-proj/}

MODULES=	lang/python

MODPY_SETUPTOOLS=yes

RUN_DEPENDS=	x11/py-qt4 \
		textproc/py-xml \
		graphics/py-Pillow \
		graphics/py-matplotlib \
		www/py-CherryPy \
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
