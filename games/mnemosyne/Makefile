# $OpenBSD: Makefile,v 1.6 2008/08/23 21:23:47 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	flash-card tool which optimises your learning process

MODPY_EGG_VERSION=1.1.1
DISTNAME=	mnemosyne-${MODPY_EGG_VERSION}
CATEGORIES=	games education

EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://mnemosyne-proj.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mnemosyne-proj/}

MODULES=	lang/python

MODPY_SETUPTOOLS=yes

RUN_DEPENDS=	::x11/py-qt3 \
		:python-bz2-*:lang/python/${MODPY_VERSION},-bz2 \
		::devel/pygame \
		::textproc/py-xml \
		:desktop-file-utils-*:devel/desktop-file-utils

NO_REGRESS=	Yes

pre-configure:
	@perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},' \
		${WRKSRC}/mnemosyne/pyqt_ui/mnemosyne

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/mnemosyne.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/pixmaps/mnemosyne.png \
		${PREFIX}/share/pixmaps

.include <bsd.port.mk>
