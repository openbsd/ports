# $OpenBSD: Makefile,v 1.25 2013/03/04 11:34:51 jasper Exp $

COMMENT =		lightweight HTTP/SSL proxy

V =			1.8.3
DISTNAME =		tinyproxy-${V}
REVISION =		1
CATEGORIES =		www net

HOMEPAGE =		https://www.banu.com/tinyproxy/
MAINTAINER =		frantisek holop <minusf@obiit.org>

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

BUILD_DEPENDS =		textproc/asciidoc>=8.6.8

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

WANTLIB =		c

MASTER_SITES =		https://www.banu.com/pub/tinyproxy/1.8/

REGRESS_TARGET =	check

SYSCONFDIR =		${BASESYSCONFDIR}/tinyproxy

post-install:
	mv ${WRKINST}${SYSCONFDIR} ${PREFIX}/share/examples

.include <bsd.port.mk>
