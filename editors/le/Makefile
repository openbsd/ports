# $OpenBSD: Makefile,v 1.8 2017/07/16 19:18:52 espie Exp $

COMMENT =	text editor inspired by Norton Commander
DISTNAME =	le-1.16.3
REVISION =	0
CATEGORIES =	editors

HOMEPAGE =	http://lav.yar.ru/programs.html
MAINTAINER =	Ivan Ivanov <rambiusparkisanius@gmail.com>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m ncursesw ${COMPILER_LIBCXX}

MASTER_SITES =	http://lav.yar.ru/download/le/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
