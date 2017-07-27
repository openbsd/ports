# $OpenBSD: Makefile,v 1.28 2017/07/27 11:01:33 sthen Exp $

COMMENT=	GNUstep example applications

DISTNAME=	gnustep-examples-1.4.0
REVISION =	6

CATEGORIES=	misc

HOMEPAGE=	http://www.gnustep.org/experience/examples.html

WANTLIB =	GL GLU
WANTLIB += ${COMPILER_LIBCXX}

MASTER_SITES=	${MASTER_SITE_GNUSTEP:=usr-apps/}

MODULES=	x11/gnustep

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gui/MyGL/GNUmakefile \
			${WRKSRC}/gui/MyGL/AppController.m

.include <bsd.port.mk>
