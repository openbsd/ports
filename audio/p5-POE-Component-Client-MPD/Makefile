# $OpenBSD: Makefile,v 1.7 2010/10/01 21:57:53 jasper Exp $

COMMENT=		complete MPD client library

DISTNAME=		POE-Component-Client-MPD-0.9.2
CATEGORIES=		audio

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	bin

RUN_DEPENDS=		:p5-Audio-MPD-Common->=0.1.4:audio/p5-Audio-MPD-Common \
			::devel/p5-Class-Accessor \
			::devel/p5-List-MoreUtils \
			::devel/p5-POE \
			::devel/p5-Readonly

PORTHOME=		${WRKDIR}

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
