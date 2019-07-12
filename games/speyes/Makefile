# $OpenBSD: Makefile,v 1.19 2019/07/12 20:46:24 sthen Exp $

COMMENT=		wm-dockapp; xeyes clone using South Park characters

DISTNAME=		speyes-1.2.0
REVISION =		3
CATEGORIES=		games x11 x11/windowmaker

HOMEPAGE=		http://www.okb-1.org/speyes/speyes.html

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xmu Xpm Xt c m \
			xcb

MASTER_SITES=		http://www.okb-1.org/speyes/

NO_TEST=		Yes
CONFIGURE_STYLE=	imake noman

.include <bsd.port.mk>
