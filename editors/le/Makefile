# $OpenBSD: Makefile,v 1.5 2016/10/24 08:10:46 fcambus Exp $

COMMENT =	text editor inspired by Norton Commander
DISTNAME =	le-1.16.3
CATEGORIES =	editors

HOMEPAGE =	http://lav.yar.ru/programs.html
MAINTAINER =	Ivan Ivanov <rambiusparkisanius@gmail.com>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c iconv m ncursesw stdc++

MASTER_SITES =	http://lav.yar.ru/download/le/

LIB_DEPENDS =	converters/libiconv

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
