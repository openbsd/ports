# $OpenBSD: Makefile,v 1.8 2020/04/23 16:01:15 ajacoutot Exp $

COMMENT =	curses icb and irc client
DISTNAME =	swirc-3.2.4
CATEGORIES =	net
HOMEPAGE =	https://www.nifty-networks.net/swirc/
REVISION =	0

MAINTAINER =		Markus Uhlin <markus.uhlin@bredband.net>

# BSD-3, ISC and MIT.
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =		${COMPILER_LIBCXX} c crypto curl curses idn m panel pthread ssl

MASTER_SITES =		https://www.nifty-networks.net/swirc/releases/
EXTRACT_SUFX =		.tgz
COMPILER =		base-clang ports-gcc
LIB_DEPENDS =		devel/libidn net/curl
CONFIGURE_STYLE =	simple

TEST_DEPENDS =		devel/cmocka
TEST_TARGET =		check

MAKE_FLAGS =		DEST_CONFMAN=${WRKINST}${PREFIX}/man/man5 \
			DEST_MANUAL=${WRKINST}${PREFIX}/man/man1 \
			INSTALL_DEPS=swirc src/swirc.1 swirc.conf.5 \
			PREFIX=${PREFIX} CC="${CC}" CXX="${CXX}" \
			E=@: Q=

.include <bsd.port.mk>
