# $OpenBSD: Makefile,v 1.4 2019/07/12 20:49:42 sthen Exp $

COMMENT =		exFAT file system through FUSE

V =			1.2.8
GH_ACCOUNT =		relan
GH_PROJECT =		exfat
GH_TAGNAME =		v${V}
DISTNAME =		exfat-fuse-${V}

CATEGORIES =		sysutils

MAINTAINER =		YASUOKA Masahiko <yasuoka@yasuoka.net>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		c fuse

CONFIGURE_STYLE = 	autoreconf
AUTOMAKE_VERSION =	1.15
AUTOCONF_VERSION =	2.69

.include <bsd.port.mk>
