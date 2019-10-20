# $OpenBSD: Makefile,v 1.31 2019/10/20 08:03:01 ajacoutot Exp $

COMMENT=	GNUstep example applications

DISTNAME=	gnustep-examples-1.4.0
REVISION =	9

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
