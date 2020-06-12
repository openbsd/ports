# $OpenBSD: Makefile,v 1.32 2020/06/12 04:43:27 kn Exp $

COMMENT =		lightweight HTTP/SSL proxy

V =			1.8.4
DISTNAME =		tinyproxy-$V
CATEGORIES =		www net
REVISION =		2

HOMEPAGE =		https://tinyproxy.github.io/

# GPLv2+
PERMIT_PACKAGE =		Yes

BUILD_DEPENDS =		textproc/asciidoc>=8.6.8

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

WANTLIB =		c

MASTER_SITES =		https://github.com/tinyproxy/tinyproxy/releases/download/$V/

SYSCONFDIR =		${BASESYSCONFDIR}/tinyproxy

post-install:
	mv ${WRKINST}${SYSCONFDIR} ${PREFIX}/share/examples

.include <bsd.port.mk>
