# $OpenBSD: Makefile,v 1.17 2021/02/11 22:26:46 naddy Exp $

COMMENT =		display bandwidth usage on an interface

DISTNAME =		iftop-1.0pre4
REVISION =		3
CATEGORIES =		net

HOMEPAGE =		http://www.ex-parrot.com/~pdw/iftop/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		c curses m pcap pthread

MASTER_SITES =		${HOMEPAGE}download/

CONFIGURE_STYLE =	gnu
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/config

NO_TEST =		Yes

.include <bsd.port.mk>
