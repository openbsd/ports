# $OpenBSD: Makefile,v 1.12 2018/10/24 14:28:01 sthen Exp $

COMMENT =	text editor inspired by Norton Commander
DISTNAME =	le-1.16.5
CATEGORIES =	editors
REVISION =	0

HOMEPAGE =	http://lav.yar.ru/programs.html
MAINTAINER =	Ivan Ivanov <rambiusparkisanius@gmail.com>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m ncursesw ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	http://lav.yar.ru/download/le/

CONFIGURE_STYLE =	gnu

post-install:
	@rm -rf ${PREFIX}/share/applications \
		${PREFIX}/share/icons

.include <bsd.port.mk>
