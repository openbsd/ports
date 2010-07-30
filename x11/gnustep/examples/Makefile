# $OpenBSD: Makefile,v 1.12 2010/07/30 11:29:44 ajacoutot Exp $

COMMENT=	GNUstep example applications

DISTNAME=	gnustep-examples-1.3.0
REVISION=	1

CATEGORIES=	misc

HOMEPAGE=	http://www.gnustep.org/experience/examples.html

WANTLIB=	GL GLU c m objc pthread gnustep-base gnustep-gui

MASTER_SITES=	${MASTER_SITE_GNUSTEP:=core/}

USE_X11=	Yes
MODULES=	x11/gnustep
LIB_DEPENDS=	::x11/gnustep/base \
		::x11/gnustep/gui
RUN_DEPENDS=	:gnustep-back-*:x11/gnustep/back

pre-configure:
	@perl -pi -e 's,!!X11BASE!!,${X11BASE},g' \
		${WRKSRC}/gui/MyGL/GNUmakefile
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},g' \
		${WRKSRC}/gui/MyGL/AppController.m

.include <bsd.port.mk>
