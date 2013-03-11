# $OpenBSD: Makefile,v 1.26 2013/03/11 11:44:50 espie Exp $

COMMENT =		lightweight HTTP/SSL proxy

V =			1.8.3
DISTNAME =		tinyproxy-${V}
REVISION =		1
CATEGORIES =		www net

HOMEPAGE =		https://www.banu.com/tinyproxy/
MAINTAINER =		frantisek holop <minusf@obiit.org>

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes

BUILD_DEPENDS =		textproc/asciidoc>=8.6.8

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

WANTLIB =		c

MASTER_SITES =		https://www.banu.com/pub/tinyproxy/1.8/

TEST_TARGET =	check

SYSCONFDIR =		${BASESYSCONFDIR}/tinyproxy

post-install:
	mv ${WRKINST}${SYSCONFDIR} ${PREFIX}/share/examples

.include <bsd.port.mk>
