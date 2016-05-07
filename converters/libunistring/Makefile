# $OpenBSD: Makefile,v 1.9 2016/05/07 12:40:56 pascal Exp $

COMMENT =		manipulate Unicode strings

DISTNAME =		libunistring-0.9.6
REVISION =		0

SHARED_LIBS +=		unistring                 0.1 # 2.0

CATEGORIES =		converters

HOMEPAGE =		https://www.gnu.org/software/libunistring/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# (L)GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		iconv

MASTER_SITES =		${MASTER_SITE_GNU:=libunistring/}

LIB_DEPENDS =		converters/libiconv

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
