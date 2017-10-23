# $OpenBSD: Makefile,v 1.18 2017/10/23 17:10:49 sthen Exp $

COMMENT=		wm-dockapp; xeyes clone using South Park characters

DISTNAME=		speyes-1.2.0
REVISION =		3
CATEGORIES=		games x11 x11/windowmaker

HOMEPAGE=		http://www.okb-1.org/speyes/speyes.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xmu Xpm Xt c m \
			xcb

MASTER_SITES=		http://www.okb-1.org/speyes/

NO_TEST=		Yes
CONFIGURE_STYLE=	imake noman

.include <bsd.port.mk>
