# $OpenBSD: Makefile,v 1.9 2019/07/12 20:47:57 sthen Exp $

COMMENT =	inspect, edit and validate Ogg files

V =		1.1.1
PKGNAME =	oggz-${V}
DISTNAME =	liboggz-${V}
CATEGORIES =	multimedia
HOMEPAGE =	https://www.xiph.org/oggz/
REVISION =	3

SHARED_LIBS =	oggz	0.0

# BSD
PERMIT_PACKAGE =		Yes

MASTER_SITES =	https://downloads.xiph.org/releases/liboggz/

WANTLIB =	c ogg m

LIB_DEPENDS =	audio/libogg

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.65

.include <bsd.port.mk>
