# $OpenBSD: Makefile,v 1.1.1.1 2019/11/11 19:25:12 ajacoutot Exp $

COMMENT =	curses icb and irc client
DISTNAME =	swirc-3.0.0
CATEGORIES =	net
HOMEPAGE =	https://www.nifty-networks.net/swirc/

MAINTAINER =		Markus Uhlin <markus.uhlin@bredband.net>

# BSD-3, ISC and MIT.
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =		${COMPILER_LIBCXX} c crypto curl curses m panel pthread ssl

MASTER_SITES =		https://www.nifty-networks.net/swirc/releases/
EXTRACT_SUFX =		.tgz
COMPILER =		base-clang ports-gcc
LIB_DEPENDS =		net/curl
CONFIGURE_STYLE =	simple

NO_TEST =		Yes

MAKE_FLAGS =		DEST_CONFMAN=${WRKINST}${PREFIX}/man/man5 \
			DEST_MANUAL=${WRKINST}${PREFIX}/man/man1 \
			INSTALL_DEPS=swirc src/swirc.1 swirc.conf.5 \
			PREFIX=${PREFIX}

.include <bsd.port.mk>
