# $OpenBSD: Makefile,v 1.8 2013/03/02 14:10:30 ajacoutot Exp $

COMMENT=		client of the Tryton application platform

DISTNAME=		tryton-${MODPY_EGG_VERSION}
MODPY_EGG_VERSION=	2.6.2

CATEGORIES=		x11

RUN_DEPENDS=		devel/gettext \
			x11/py-gtk2 \
			x11/gnome/librsvg \
			devel/py-dateutil \
			devel/py-simplejson \
			devel/py-tz \
			devel/desktop-file-utils

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/tryton.desktop \
		${PREFIX}/share/applications
	ln -sf ${TRUEPREFIX}/share/pixmaps/tryton/tryton-icon.svg \
		${PREFIX}/share/pixmaps/tryton-icon.svg

.include <bsd.port.mk>
