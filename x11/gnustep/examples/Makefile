# $OpenBSD: Makefile,v 1.7 2008/10/03 07:21:56 ajacoutot Exp $

COMMENT=	GNUstep example applications

DISTNAME=	gnustep-examples-1.2.0
PKGNAME=	${DISTNAME}p3
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
