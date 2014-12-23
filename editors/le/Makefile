# $OpenBSD: Makefile,v 1.2 2014/12/23 18:34:47 bcallah Exp $

COMMENT =	text editor inspired by Norton Commander
DISTNAME =	le-1.15.1
CATEGORIES =	editors

HOMEPAGE =	http://lav.yar.ru/programs.html
MAINTAINER =	Ivan Ivanov <rambiusparkisanius@gmail.com>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ncursesw stdc++

MASTER_SITES =	http://lav.yar.ru/download/le/

MODULES =	converters/libiconv

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
