# $OpenBSD: Makefile,v 1.17 2013/03/11 11:07:40 espie Exp $

COMMENT=		wm-dockapp; xeyes clone using South Park characters

DISTNAME=		speyes-1.2.0
REVISION =		2
CATEGORIES=		games x11 x11/windowmaker

HOMEPAGE=		http://www.okb-1.org/speyes/speyes.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xmu Xpm Xt c m \
			pthread-stubs xcb

MASTER_SITES=		http://www.okb-1.org/speyes/

NO_TEST=		Yes
CONFIGURE_STYLE=	imake noman

.include <bsd.port.mk>
