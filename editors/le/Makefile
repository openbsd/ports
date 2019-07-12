# $OpenBSD: Makefile,v 1.14 2019/07/12 20:46:05 sthen Exp $

COMMENT =	text editor inspired by Norton Commander
DISTNAME =	le-1.16.5
CATEGORIES =	editors
REVISION =	1

HOMEPAGE =	http://lav.yar.ru/programs.html
MAINTAINER =	Ivan Ivanov <rambiusparkisanius@gmail.com>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} c curses m

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	http://lav.yar.ru/download/le/

CONFIGURE_STYLE =	gnu

post-install:
	@rm -rf ${PREFIX}/share/applications \
		${PREFIX}/share/icons

.include <bsd.port.mk>
