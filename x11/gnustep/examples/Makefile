# $OpenBSD: Makefile,v 1.14 2010/10/26 12:39:10 sebastia Exp $

COMMENT=	GNUstep example applications

DISTNAME=	gnustep-examples-1.3.0
REVISION=	2

CATEGORIES=	misc

HOMEPAGE=	http://www.gnustep.org/experience/examples.html

WANTLIB=	GL GLU c m pthread

MASTER_SITES=	${MASTER_SITE_GNUSTEP:=core/}

MODULES=	x11/gnustep

pre-configure:
	@perl -pi -e 's,!!X11BASE!!,${X11BASE},g' \
		${WRKSRC}/gui/MyGL/GNUmakefile
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},g' \
		${WRKSRC}/gui/MyGL/AppController.m

.include <bsd.port.mk>
