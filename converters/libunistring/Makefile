# $OpenBSD: Makefile,v 1.11 2019/07/12 20:43:49 sthen Exp $

COMMENT =		manipulate Unicode strings

DISTNAME =		libunistring-0.9.7

SHARED_LIBS +=		unistring                 0.1 # 2.0

CATEGORIES =		converters

HOMEPAGE =		https://www.gnu.org/software/libunistring/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# LGPLv3+ or GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		iconv

MASTER_SITES =		${MASTER_SITE_GNU:=libunistring/}

LIB_DEPENDS =		converters/libiconv

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
