# $OpenBSD: Makefile,v 1.12 2013/10/28 07:27:59 ajacoutot Exp $

COMMENT=		client of the Tryton application platform

DISTNAME=		tryton-${MODPY_EGG_VERSION}

CATEGORIES=		x11

RUN_DEPENDS=		devel/gettext \
			x11/py-gtk2 \
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
