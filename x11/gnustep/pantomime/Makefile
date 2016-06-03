# $OpenBSD: Makefile,v 1.20 2016/06/03 11:57:58 sebastia Exp $

COMMENT=	framework to major mail protocols

REVISION =	3
DISTNAME=	Pantomime-1.2.2

SHLIB_VERSION = 1.3
SHARED_LIBS=	Pantomime ${SHLIB_VERSION}
CATEGORIES=	mail

HOMEPAGE=	http://www.collaboration-world.com/pantomime/

WANTLIB=	ssl

MASTER_SITES=	http://download.gna.org/gnustep-nonfsf/

MODULES=	x11/gnustep
MODGNUSTEP_IS_FRAMEWORK = Yes
WANTLIB += 	pthread gnustep-base objc2

MAKE_FLAGS +=	Pantomime_INTERFACE_VERSION=${LIBPantomime_VERSION}

SUBST_VARS += 	SHLIB_VERSION

.include <bsd.port.mk>
