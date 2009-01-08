# $OpenBSD: Makefile,v 1.5 2009/01/08 12:05:12 jasper Exp $

COMMENT=		complete MPD client library

DISTNAME=		POE-Component-Client-MPD-0.9.1
CATEGORIES=		audio

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

RUN_DEPENDS=		:p5-Audio-MPD-Common->=0.1.4:audio/p5-Audio-MPD-Common \
			::devel/p5-Class-Accessor \
			::devel/p5-List-MoreUtils \
			::devel/p5-POE \
			::devel/p5-Readonly

PORTHOME=		${WRKDIR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-POE-Component-Client-MPD
	${INSTALL_DATA} ${WRKSRC}/bin/client.pl \
		${PREFIX}/share/examples/p5-POE-Component-Client-MPD

.include <bsd.port.mk>
