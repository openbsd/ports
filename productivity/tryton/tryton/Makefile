# $OpenBSD: Makefile,v 1.5 2012/05/02 06:57:21 ajacoutot Exp $

COMMENT=		client of the Tryton application platform

MODPY_EGG_VERSION =	2.4.0
DISTNAME=		tryton-${MODPY_EGG_VERSION}

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
