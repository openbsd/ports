# $OpenBSD: Makefile,v 1.3 2013/11/09 23:19:02 naddy Exp $

COMMENT =		manipulate Unicode strings

DISTNAME =		libunistring-0.9.3
REVISION =		0

SHARED_LIBS +=		unistring                 0.0 # 1.2

CATEGORIES =		converters

HOMEPAGE =		https://www.gnu.org/software/libunistring/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# (L)GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_GNU:=libunistring/}

MODULES =		converters/libiconv

# needs --preserve-dup-deps
USE_LIBTOOL =		gnu
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

# XXX: One regression test fails:
# test-wcwidth fails on: ASSERT (wcwidth (0x05B0) == 0);

.include <bsd.port.mk>
