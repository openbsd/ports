# $OpenBSD: Makefile,v 1.27 2019/10/20 08:03:03 ajacoutot Exp $

COMMENT=	framework to major mail protocols

DISTNAME=	Pantomime-1.3.0
REVISION =	2

SHLIB_VERSION = 2.0
SHARED_LIBS=	Pantomime ${SHLIB_VERSION}
CATEGORIES=	mail

HOMEPAGE=	https://savannah.nongnu.org/projects/gnustep-nonfsf/

WANTLIB=	ssl

MASTER_SITES=	https://download.savannah.nongnu.org/releases/gnustep-nonfsf/

MODULES=	x11/gnustep
MODGNUSTEP_IS_FRAMEWORK = Yes
WANTLIB += 	pthread gnustep-base objc2

MAKE_FLAGS +=	Pantomime_INTERFACE_VERSION=${LIBPantomime_VERSION}

SUBST_VARS += 	SHLIB_VERSION

.include <bsd.port.mk>
