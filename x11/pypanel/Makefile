# $OpenBSD: Makefile,v 1.1.1.1 2006/12/21 09:09:26 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	"lightweight panel written in Python and C for X11"

DISTNAME=	PyPanel-2.4
PKGNAME=	${DISTNAME:L}
CATEGORIES=	x11

HOMEPAGE=	http://pypanel.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xext Xft freetype m

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pypanel/}

MODULES=	lang/python

BUILD_DEPENDS=	::x11/py-Xlib
LIB_DEPENDS=	Imlib2.>=2::graphics/imlib2

USE_X11=	Yes
NO_REGRESS=	Yes

SITE_PATH=	${PREFIX}/lib/python${MODPY_VERSION}/site-packages/

pre-configure:
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g; \
	s,!!X11BASE!!,${X11BASE},g;' ${WRKSRC}/setup.py

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/pypanel ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${SITE_PATH}/pypanel
	${INSTALL_DATA} ${WRKSRC}/lib.openbsd-4.0-*/ppmodule.so ${SITE_PATH}
	${INSTALL_DATA} ${WRKSRC}/{README,ppicon.png,pypanelrc} \
		${SITE_PATH}/pypanel

.include <bsd.port.mk>
