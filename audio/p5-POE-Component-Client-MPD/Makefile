# $OpenBSD: Makefile,v 1.13 2014/04/06 12:05:20 sthen Exp $

COMMENT=		complete MPD client library

DISTNAME=		POE-Component-Client-MPD-0.9.2
REVISION=		1
CATEGORIES=		audio

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	bin

RUN_DEPENDS=		audio/p5-Audio-MPD-Common>=0.1.4 \
			devel/p5-Class-Accessor \
			devel/p5-List-MoreUtils \
			devel/p5-POE \
			devel/p5-Readonly

PORTHOME=		${WRKDIR}

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
