# $OpenBSD: Makefile.inc,v 1.7 2019/07/12 20:48:50 sthen Exp $

CATEGORIES =		net/tkabber x11

HOMEPAGE =		http://tkabber.jabber.ru/

# GPLv2
PERMIT_PACKAGE =	Yes

VERSION = 		1.1.2

MASTER_SITES =		http://files.jabber.ru/tkabber/
EXTRACT_SUFX =		.tar.xz

MODULES =		x11/tk

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*
