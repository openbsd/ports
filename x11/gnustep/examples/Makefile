# $OpenBSD: Makefile,v 1.11 2010/07/30 06:58:58 ajacoutot Exp $

COMMENT=	GNUstep example applications

DISTNAME=	gnustep-examples-1.3.0
REVISION=	0
CATEGORIES=	misc

HOMEPAGE=	http://www.gnustep.org/experience/examples.html

WANTLIB=	GL GLU c m objc pthread

MASTER_SITES=	${MASTER_SITE_GNUSTEP:=core/}

USE_X11=	Yes
MODULES=	x11/gnustep
LIB_DEPENDS=	gnustep-base.>=1::x11/gnustep/base \
		gnustep-gui::x11/gnustep/gui
RUN_DEPENDS=	:gnustep-back-*:x11/gnustep/back

pre-configure:
	@perl -pi -e 's,!!X11BASE!!,${X11BASE},g' \
		${WRKSRC}/gui/MyGL/GNUmakefile
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},g' \
		${WRKSRC}/gui/MyGL/AppController.m

.include <bsd.port.mk>
