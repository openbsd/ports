# $OpenBSD: Makefile,v 1.2 2019/07/12 20:48:32 sthen Exp $

COMMENT =	download client for rtsp, mms and mmsh

V =		1.2.7
DISTNAME =	msdl-$V-r2
PKGNAME =	${DISTNAME:S/-r/pl/}
CATEGORIES =	net

HOMEPAGE =	http://msdl.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=msdl/}

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
