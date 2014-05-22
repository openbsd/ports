# $OpenBSD: Makefile,v 1.15 2014/05/22 09:48:57 sebastia Exp $

COMMENT=	framework to major mail protocols

DISTNAME=	Pantomime-1.2.0pre3
REVISION =	10

SHARED_LIBS=	Pantomime 1.2	# .1.2
CATEGORIES=	mail

HOMEPAGE=	http://www.collaboration-world.com/pantomime/

WANTLIB=	crypto ssl

MASTER_SITES=	${HOMEPAGE}.data/releases/Stable/

MODULES=	x11/gnustep
MODGNUSTEP_IS_FRAMEWORK = Yes
WANTLIB += 	pthread

WRKDIST=	${WRKDIR}/Pantomime

MAKE_FLAGS +=	Pantomime_INTERFACE_VERSION=${LIBPantomime_VERSION}

.include <bsd.port.mk>
