# $OpenBSD: Makefile,v 1.1.1.1 2014/12/01 23:05:53 bcallah Exp $

COMMENT =	small standards-compliant window manager
DISTNAME =	wind-1.5
CATEGORIES =	x11

HOMEPAGE =	http://windwm.sourceforge.net
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xft c

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=windwm/}

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
