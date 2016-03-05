# $OpenBSD: Makefile,v 1.26 2016/03/05 16:04:07 pascal Exp $

COMMENT=	GNUstep example applications

DISTNAME=	gnustep-examples-1.4.0
REVISION =	4

CATEGORIES=	misc

HOMEPAGE=	http://www.gnustep.org/experience/examples.html

WANTLIB =	GL GLU

MASTER_SITES=	${MASTER_SITE_GNUSTEP:=usr-apps/}

MODULES=	x11/gnustep

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gui/MyGL/GNUmakefile \
			${WRKSRC}/gui/MyGL/AppController.m

.include <bsd.port.mk>
