# $OpenBSD: Makefile,v 1.3 2019/07/12 20:51:23 sthen Exp $

COMMENT =	small standards-compliant window manager
DISTNAME =	wind-1.5
CATEGORIES =	x11
REVISION =	0

HOMEPAGE =	http://windwm.sourceforge.net

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ICE SM X11 Xft c

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=windwm/}

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
