# $OpenBSD: Makefile,v 1.6 2016/04/27 21:18:28 eric Exp $

COMMENT =	inspect, edit and validate Ogg files

V =		1.1.1
PKGNAME =	oggz-${V}
DISTNAME =	liboggz-${V}
CATEGORIES =	multimedia
HOMEPAGE =	http://www.xiph.org/oggz/
REVISION =	1

SHARED_LIBS =	oggz	0.0

# BSD
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	http://downloads.xiph.org/releases/liboggz/

WANTLIB =	c ogg m

LIB_DEPENDS =	audio/libogg

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
