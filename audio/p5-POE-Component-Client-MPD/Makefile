# $OpenBSD: Makefile,v 1.12 2013/03/10 22:55:04 espie Exp $

COMMENT=		complete MPD client library

DISTNAME=		POE-Component-Client-MPD-0.9.2
REVISION=		0
CATEGORIES=		audio

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	bin
USE_GROFF =		Yes

RUN_DEPENDS=		audio/p5-Audio-MPD-Common>=0.1.4 \
			devel/p5-Class-Accessor \
			devel/p5-List-MoreUtils \
			devel/p5-POE \
			devel/p5-Readonly

PORTHOME=		${WRKDIR}

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
