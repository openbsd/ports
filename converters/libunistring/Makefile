# $OpenBSD: Makefile,v 1.7 2016/03/11 19:59:12 naddy Exp $

COMMENT =		manipulate Unicode strings

DISTNAME =		libunistring-0.9.6

SHARED_LIBS +=		unistring                 0.1 # 2.0

CATEGORIES =		converters

HOMEPAGE =		https://www.gnu.org/software/libunistring/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# (L)GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_GNU:=libunistring/}

MODULES =		converters/libiconv

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
