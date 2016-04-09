# $OpenBSD: Makefile,v 1.4 2016/04/09 20:14:48 naddy Exp $

COMMENT =	text editor inspired by Norton Commander
DISTNAME =	le-1.16.1
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
