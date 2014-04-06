# $OpenBSD: Makefile,v 1.11 2014/04/06 12:05:20 sthen Exp $

COMMENT=		bunch of common helper classes for MPD

DISTNAME=		Audio-MPD-Common-1.110550
REVISION=		0
CATEGORIES=		audio

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
CPAN_AUTHOR=		JQUELIN

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Class-Accessor \
			devel/p5-MooseX-Has-Sugar \
			devel/p5-MooseX-Types \
			devel/p5-Readonly

.include <bsd.port.mk>
