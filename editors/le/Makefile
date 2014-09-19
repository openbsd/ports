# $OpenBSD: Makefile,v 1.1.1.1 2014/09/19 22:23:29 bcallah Exp $

COMMENT =	text editor inspired by Norton Commander
DISTNAME =	le-1.15.0
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
