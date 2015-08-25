# $OpenBSD: Makefile,v 1.4 2015/08/25 13:18:25 sthen Exp $

V =		4.1
COMMENT =	Qt5 library for Telegram messaging service
DISTNAME =	${GH_PROJECT}-${V}
CATEGORIES =	devel
REVISION =	0

SHARED_LIBS +=  qtelegram-ae              1.0 # 2.0

GH_ACCOUNT =	Aseman-Land
GH_PROJECT =	libqtelegram-aseman-edition
GH_TAGNAME =	v${V}

# GPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL Qt5Core Qt5Gui Qt5Multimedia Qt5Network crypto m
WANTLIB += pthread ssl z

MODULES =	x11/qt5

NO_TEST =	Yes

do-configure:
	cd ${WRKSRC} && qmake-qt5 PREFIX="${DESTDIR}${PREFIX}"
	perl -pi -e "s,1\.0$$,${LIBqtelegram-ae_VERSION},g" ${WRKSRC}/Makefile

.include <bsd.port.mk>
