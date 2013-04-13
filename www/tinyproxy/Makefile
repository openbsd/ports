# $OpenBSD: Makefile,v 1.27 2013/04/13 13:08:17 sthen Exp $

COMMENT =		lightweight HTTP/SSL proxy

DISTNAME =		tinyproxy-1.8.3
REVISION =		2
CATEGORIES =		www net

HOMEPAGE =		https://www.banu.com/tinyproxy/
MAINTAINER =		frantisek holop <minusf@obiit.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

BUILD_DEPENDS =		textproc/asciidoc>=8.6.8

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

WANTLIB =		c

MASTER_SITES =		https://www.banu.com/pub/tinyproxy/1.8/

TEST_TARGET =		check

SYSCONFDIR =		${BASESYSCONFDIR}/tinyproxy

post-install:
	mv ${WRKINST}${SYSCONFDIR} ${PREFIX}/share/examples

.include <bsd.port.mk>
