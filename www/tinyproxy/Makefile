# $OpenBSD: Makefile,v 1.23 2012/08/20 09:51:20 jasper Exp $

COMMENT =		lightweight HTTP/SSL proxy

V =			1.8.3
DISTNAME =		tinyproxy-${V}
REVISION =		0
CATEGORIES =		www net

HOMEPAGE =		https://www.banu.com/tinyproxy/
MAINTAINER =		frantisek holop <minusf@obiit.org>

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

BUILD_DEPENDS =		textproc/asciidoc

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	A2X=${LOCALBASE}/bin/a2x.py

WANTLIB =		c

MASTER_SITES =		https://www.banu.com/pub/tinyproxy/1.8/

REGRESS_TARGET =	check

SYSCONFDIR =		${BASESYSCONFDIR}/tinyproxy

post-install:
	mv ${WRKINST}${SYSCONFDIR} ${PREFIX}/share/examples

.include <bsd.port.mk>
