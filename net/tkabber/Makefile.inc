# $OpenBSD: Makefile.inc,v 1.4 2015/05/12 16:12:20 czarkoff Exp $

CATEGORIES =		net/tkabber x11

HOMEPAGE =		http://tkabber.jabber.ru/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

VERSION = 		1.1.2

MASTER_SITES =		http://files.jabber.ru/tkabber/
EXTRACT_SUFX =		.tar.xz

MODULES =		x11/tk

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*
