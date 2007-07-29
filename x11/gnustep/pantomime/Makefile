# $OpenBSD: Makefile,v 1.1.1.1 2007/07/29 14:15:31 ajacoutot Exp $

COMMENT=	framework to major mail protocols

DISTNAME=	Pantomime-1.2.0pre3
PKGNAME=	${DISTNAME:L}
SHARED_LIBS=	Pantomime 1.2	# .1.2
CATEGORIES=	mail

HOMEPAGE=	http://www.collaboration-world.com/pantomime

WANTLIB=	crypto ssl

MASTER_SITES=	${HOMEPAGE}.data/releases/Stable/

MODULES=	x11/gnustep
BUILD_DEPENDS=	:gnustep-base-*:x11/gnustep/base

WRKDIST=	${WRKDIR}/Pantomime

pre-configure:
	@perl -pi -e 's,^PANTOMIME_MAJOR_VERSION=.*,PANTOMIME_MAJOR_VERSION=${LIBPantomime_VERSION:R},g;' \
		-e 's,^PANTOMIME_MINOR_VERSION=.*,PANTOMIME_MINOR_VERSION=${LIBPantomime_VERSION:E},g' \
		${WRKSRC}/Framework/Pantomime/GNUmakefile

.include <bsd.port.mk>
