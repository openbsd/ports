# $OpenBSD: Makefile,v 1.1 2019/01/05 23:06:38 uaa Exp $

COMMENT =	download client for rtsp, mms and mmsh

V =		1.2.7
DISTNAME =	msdl-$V-r2
PKGNAME =	${DISTNAME:S/-r/pl/}
CATEGORIES =	net

HOMEPAGE =	http://msdl.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=msdl/}

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
