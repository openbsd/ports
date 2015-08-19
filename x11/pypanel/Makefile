# $OpenBSD: Makefile,v 1.16 2015/08/19 20:14:00 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	lightweight panel written in Python and C for X11

DISTNAME=	PyPanel-2.4
PKGNAME=	${DISTNAME:L}
REVISION=	10
CATEGORIES=	x11

HOMEPAGE=	http://pypanel.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	Xft freetype z Imlib2 pthread ${MODPY_WANTLIB}

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pypanel/}

MODULES=	lang/python

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	x11/py-Xlib
LIB_DEPENDS=	graphics/imlib2

NO_TEST=	Yes

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
