# $OpenBSD: Makefile,v 1.13 2014/09/08 17:04:51 jasper Exp $

COMMENT=		bunch of common helper classes for MPD

DISTNAME=		Audio-MPD-Common-1.110550
REVISION=		2
CATEGORIES=		audio

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
