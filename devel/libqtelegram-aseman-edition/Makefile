# $OpenBSD: Makefile,v 1.3 2015/06/10 19:44:20 bcallah Exp $

V =		4.1
COMMENT =	Qt5 library for Telegram messaging service
DISTNAME =	${GH_PROJECT}-${V}
CATEGORIES =	devel

SHARED_LIBS +=  qtelegram-ae              1.0 # 2.0

GH_ACCOUNT =	Aseman-Land
GH_PROJECT =	libqtelegram-aseman-edition
GH_TAGNAME =	v${V}

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

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
