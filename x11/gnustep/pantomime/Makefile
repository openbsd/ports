# $OpenBSD: Makefile,v 1.14 2013/10/19 13:25:02 sebastia Exp $

COMMENT=	framework to major mail protocols

DISTNAME=	Pantomime-1.2.0pre3
REVISION =	9

SHARED_LIBS=	Pantomime 1.2	# .1.2
CATEGORIES=	mail

HOMEPAGE=	http://www.collaboration-world.com/pantomime/

WANTLIB=	crypto ssl

MASTER_SITES=	${HOMEPAGE}.data/releases/Stable/

MODULES=	x11/gnustep
MODGNUSTEP_NEEDS_GUI=	No
MODGNUSTEP_NEEDS_BASE=	No
BUILD_DEPENDS=	x11/gnustep/base

WRKDIST=	${WRKDIR}/Pantomime

MAKE_FLAGS +=	Pantomime_INTERFACE_VERSION=${LIBPantomime_VERSION}

.include <bsd.port.mk>
