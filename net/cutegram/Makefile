# $OpenBSD: Makefile,v 1.3 2015/06/10 19:47:04 bcallah Exp $

V =		2.4.0
COMMENT =	Qt5 Telegram messaging service client
DISTNAME =	cutegram-src-${V}
PKGNAME =	cutegram-${V}
CATEGORIES =	net x11

HOMEPAGE =	http://aseman.co/en/products/cutegram/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL Qt5Core Qt5DBus Qt5Gui Qt5Multimedia Qt5Network
WANTLIB += Qt5Qml Qt5Quick Qt5Sql Qt5WebKit Qt5WebKitWidgets Qt5Widgets
WANTLIB += Qt5Xml c crypto m pthread qtelegram-ae ssl z

MASTER_SITES =	http://aseman.co/downloads/cutegram/2/

MODULES =	x11/qt5

LIB_DEPENDS =	devel/libqtelegram-aseman-edition

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/faenza-icon-theme \
		x11/gtk+3,-guic

NO_TEST =	Yes

do-configure:
	cd ${WRKSRC} && qmake-qt5 PREFIX="${DESTDIR}${PREFIX}"

post-install:
	@rm ${PREFIX}/share/icons/cutegram.png

.include <bsd.port.mk>
