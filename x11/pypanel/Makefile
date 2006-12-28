# $OpenBSD: Makefile,v 1.2 2006/12/28 22:36:16 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	"lightweight panel written in Python and C for X11"

DISTNAME=	PyPanel-2.4
PKGNAME=	${DISTNAME:L}p0
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

PYTHONPATH=	${WRKINST}${MODPY_SITEPKG}

pre-configure:
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g; \
	s,!!X11BASE!!,${X11BASE},g;' ${WRKSRC}/setup.py
	@perl -pi -e 's,/etc,${SYSCONFDIR},g' ${WRKSRC}/pypanel

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pypanel
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pypanel
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/pypanel
	${INSTALL_DATA_DIR} ${PYTHONPATH}/pypanel
	${INSTALL_DATA} ${WRKSRC}/ppicon.png ${PYTHONPATH}/pypanel
	${INSTALL_DATA} ${WRKSRC}/pypanelrc ${PREFIX}/share/examples/pypanel

.include <bsd.port.mk>
