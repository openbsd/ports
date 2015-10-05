# $OpenBSD: Makefile,v 1.14 2015/10/05 16:29:02 sthen Exp $

COMMENT =		display bandwidth usage on an interface

DISTNAME =		iftop-1.0pre4
REVISION =		1
CATEGORIES =		net

HOMEPAGE =		http://www.ex-parrot.com/~pdw/iftop/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c curses m pcap pthread

MASTER_SITES =		${HOMEPAGE}download/

CONFIGURE_STYLE =	gnu
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/config

NO_TEST =		Yes

.include <bsd.port.mk>
