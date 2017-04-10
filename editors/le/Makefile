# $OpenBSD: Makefile,v 1.7 2017/04/10 11:45:27 sthen Exp $

COMMENT =	text editor inspired by Norton Commander
DISTNAME =	le-1.16.3
REVISION =	0
CATEGORIES =	editors

HOMEPAGE =	http://lav.yar.ru/programs.html
MAINTAINER =	Ivan Ivanov <rambiusparkisanius@gmail.com>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m ncursesw ${LIBCXX}

MASTER_SITES =	http://lav.yar.ru/download/le/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
