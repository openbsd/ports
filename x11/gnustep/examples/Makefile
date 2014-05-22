# $OpenBSD: Makefile,v 1.23 2014/05/22 09:48:56 sebastia Exp $

COMMENT=	GNUstep example applications

DISTNAME=	gnustep-examples-1.4.0
REVISION =	1

CATEGORIES=	misc

HOMEPAGE=	http://www.gnustep.org/experience/examples.html

WANTLIB =	GL GLU

MASTER_SITES=	${MASTER_SITE_GNUSTEP:=usr-apps/}

MODULES=	x11/gnustep

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gui/MyGL/GNUmakefile \
			${WRKSRC}/gui/MyGL/AppController.m

.include <bsd.port.mk>
