# $OpenBSD: Makefile,v 1.28 2017/02/18 17:21:51 jca Exp $

COMMENT =		lightweight HTTP/SSL proxy

V =			1.8.4
DISTNAME =		tinyproxy-$V
CATEGORIES =		www net

HOMEPAGE =		https://www.banu.com/tinyproxy/
MAINTAINER =		frantisek holop <minusf@obiit.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

BUILD_DEPENDS =		textproc/asciidoc>=8.6.8

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

WANTLIB =		c

MASTER_SITES =		https://github.com/tinyproxy/tinyproxy/releases/download/$V/

SYSCONFDIR =		${BASESYSCONFDIR}/tinyproxy

post-install:
	mv ${WRKINST}${SYSCONFDIR} ${PREFIX}/share/examples

.include <bsd.port.mk>
