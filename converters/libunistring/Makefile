# $OpenBSD: Makefile,v 1.4 2014/04/02 09:23:13 ajacoutot Exp $

COMMENT =		manipulate Unicode strings

DISTNAME =		libunistring-0.9.3
REVISION =		1

SHARED_LIBS +=		unistring                 0.0 # 1.2

CATEGORIES =		converters

HOMEPAGE =		https://www.gnu.org/software/libunistring/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# (L)GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_GNU:=libunistring/}

MODULES =		converters/libiconv

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED}

# XXX: One regression test fails:
# test-wcwidth fails on: ASSERT (wcwidth (0x05B0) == 0);

.include <bsd.port.mk>
