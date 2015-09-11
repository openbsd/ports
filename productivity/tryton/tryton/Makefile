# $OpenBSD: Makefile,v 1.26 2015/09/11 07:27:29 ajacoutot Exp $

MODPY_EGG_VERSION =	3.2.10

COMMENT =		client of the Tryton application platform

DISTNAME =		tryton-${MODPY_EGG_VERSION}

CATEGORIES =		x11

RUN_DEPENDS =		devel/gettext \
			x11/py-gtk2 \
			devel/py-dateutil \
			devel/py-tz \
			devel/desktop-file-utils

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/tryton.desktop \
		${PREFIX}/share/applications
	ln -sf ${TRUEPREFIX}/share/pixmaps/tryton/tryton-icon.svg \
		${PREFIX}/share/pixmaps/tryton-icon.svg

.include <bsd.port.mk>
