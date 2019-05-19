# $OpenBSD: Makefile,v 1.3 2019/05/19 19:13:47 naddy Exp $

COMMENT =		exFAT file system through FUSE

V =			1.2.8
GH_ACCOUNT =		relan
GH_PROJECT =		exfat
GH_TAGNAME =		v${V}
DISTNAME =		exfat-fuse-${V}

CATEGORIES =		sysutils

MAINTAINER =		YASUOKA Masahiko <yasuoka@yasuoka.net>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c fuse

CONFIGURE_STYLE = 	autoreconf
AUTOMAKE_VERSION =	1.15
AUTOCONF_VERSION =	2.69

.include <bsd.port.mk>
