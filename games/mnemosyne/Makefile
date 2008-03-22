# $OpenBSD: Makefile,v 1.3 2008/03/22 17:34:49 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	flash-card tool which optimises your learning process

DISTNAME=	mnemosyne-1.0.1.1
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
