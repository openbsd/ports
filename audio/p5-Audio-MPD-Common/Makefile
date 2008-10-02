# $OpenBSD: Makefile,v 1.3 2008/10/02 22:24:31 jasper Exp $

COMMENT=		bunch of common helper classes for MPD

DISTNAME=		Audio-MPD-Common-0.1.3
CATEGORIES=		audio

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
CPAN_AUTHOR=		JQUELIN

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		::devel/p5-Class-Accessor \
			::devel/p5-Readonly

.include <bsd.port.mk>
