# $OpenBSD: Makefile,v 1.8 2011/04/18 12:37:17 sebastia Exp $

COMMENT=	framework to major mail protocols

DISTNAME=	Pantomime-1.2.0pre3
PKGNAME=	${DISTNAME:L}
REVISION=	4

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

pre-configure:
	@perl -pi -e 's,^PANTOMIME_MAJOR_VERSION=.*,PANTOMIME_MAJOR_VERSION=${LIBPantomime_VERSION:R},g;' \
		-e 's,^PANTOMIME_MINOR_VERSION=.*,PANTOMIME_MINOR_VERSION=${LIBPantomime_VERSION:E},g' \
		${WRKSRC}/Framework/Pantomime/GNUmakefile

.include <bsd.port.mk>
