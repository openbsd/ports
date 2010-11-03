# $OpenBSD: Makefile,v 1.6 2010/11/03 09:21:00 jasper Exp $

COMMENT=		bunch of common helper classes for MPD

DISTNAME=		Audio-MPD-Common-1.100430
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
USE_GROFF =		Yes

RUN_DEPENDS=		::devel/p5-Class-Accessor \
			::devel/p5-MooseX-Has-Sugar \
			::devel/p5-MooseX-Types \
			::devel/p5-Readonly

.include <bsd.port.mk>
