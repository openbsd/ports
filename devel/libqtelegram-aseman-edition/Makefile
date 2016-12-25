# $OpenBSD: Makefile,v 1.7 2016/12/25 14:34:39 zhuk Exp $

V =		4.1
COMMENT =	Qt5 library for Telegram messaging service
DISTNAME =	${GH_PROJECT}-${V}
CATEGORIES =	devel
REVISION =	1

SHARED_LIBS +=  qtelegram-ae              1.0 # 2.0

GH_ACCOUNT =	Aseman-Land
GH_PROJECT =	libqtelegram-aseman-edition
GH_TAGNAME =	v${V}

# GPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL Qt5Core Qt5Gui Qt5Multimedia Qt5Network crypto m
WANTLIB += pthread ssl z

MODULES =	devel/qmake x11/qt5

LIB_DEPENDS =	x11/qt5/qtmultimedia

NO_TEST =	Yes

post-configure:
	perl -pi -e "s,1\.0$$,${LIBqtelegram-ae_VERSION},g" ${WRKSRC}/Makefile

.include <bsd.port.mk>
