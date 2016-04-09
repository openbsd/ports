# $OpenBSD: Makefile,v 1.8 2016/04/09 20:14:48 naddy Exp $

COMMENT =		manipulate Unicode strings

DISTNAME =		libunistring-0.9.6

SHARED_LIBS +=		unistring                 0.1 # 2.0

CATEGORIES =		converters

HOMEPAGE =		https://www.gnu.org/software/libunistring/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# (L)GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		iconv

MASTER_SITES =		${MASTER_SITE_GNU:=libunistring/}

LIB_DEPENDS =		converters/libiconv

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
