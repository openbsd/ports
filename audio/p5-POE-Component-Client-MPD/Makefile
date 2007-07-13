# $OpenBSD: Makefile,v 1.1.1.1 2007/07/13 11:40:25 jasper Exp $

COMMENT=		complete MPD client library

DISTNAME=		POE-Component-Client-MPD-0.7.1
CATEGORIES=		audio

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

RUN_DEPENDS=		::audio/p5-Audio-MPD-Common \
			::devel/p5-Class-Accessor \
			::devel/p5-List-MoreUtils \
			::devel/p5-POE \
			::devel/p5-Readonly

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-POE-Component-Client-MPD
	${INSTALL_DATA} ${WRKSRC}/bin/client.pl \
		${PREFIX}/share/examples/p5-POE-Component-Client-MPD

.include <bsd.port.mk>
