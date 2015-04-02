# $OpenBSD: Makefile.inc,v 1.2 2015/04/02 20:23:56 czarkoff Exp $

CATEGORIES =		net/tkabber x11

HOMEPAGE =		http://tkabber.jabber.ru/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

VERSION = 		1.1.1

MASTER_SITES =		http://files.jabber.ru/tkabber/
EXTRACT_SUFX =		.tar.xz

MODULES =		x11/tk

NO_BUILD =		Yes
NO_REGRESS =		Yes

PKG_ARCH =		*
