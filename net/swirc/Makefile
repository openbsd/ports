# $OpenBSD: Makefile,v 1.13 2021/09/13 17:06:45 solene Exp $

COMMENT =	curses icb and irc client
DISTNAME =	swirc-3.3.1
CATEGORIES =	net
HOMEPAGE =	https://www.nifty-networks.net/swirc/

MAINTAINER =		Markus Uhlin <markus.uhlin@bredband.net>

# BSD-3, ISC and MIT.
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =		${COMPILER_LIBCXX} c crypto curl curses idn intl m panel pthread ssl

MASTER_SITES =		https://www.nifty-networks.net/swirc/releases/
EXTRACT_SUFX =		.tgz
COMPILER =		base-clang ports-gcc
BUILD_DEPENDS =		devel/gettext,-tools
LIB_DEPENDS =		devel/gettext,-runtime \
			devel/libidn \
			net/curl
CONFIGURE_STYLE =	simple

TEST_DEPENDS =		devel/cmocka
TEST_TARGET =		check

MAKE_FLAGS =		DEST_CONFMAN=${WRKINST}${PREFIX}/man/man5 \
			DEST_MANUAL=${WRKINST}${PREFIX}/man/man1 \
			INSTALL_DEPS=swirc src/swirc.1 swirc.conf.5 \
			PREFIX="${PREFIX}" CC="${CC}" CXX="${CXX}"

.include <bsd.port.mk>
