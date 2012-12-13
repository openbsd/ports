# $OpenBSD: Makefile,v 1.16 2012/12/13 16:34:48 naddy Exp $

COMMENT=		wm-dockapp; xeyes clone using South Park characters

DISTNAME=		speyes-1.2.0
REVISION =		2
CATEGORIES=		games x11 x11/windowmaker

HOMEPAGE=		http://www.okb-1.org/speyes/speyes.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xmu Xpm Xt c m \
			pthread-stubs xcb

MASTER_SITES=		http://www.okb-1.org/speyes/

NO_REGRESS=		Yes
CONFIGURE_STYLE=	imake noman

.include <bsd.port.mk>
