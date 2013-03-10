# $OpenBSD: Makefile,v 1.10 2013/03/10 22:55:04 espie Exp $

COMMENT=		bunch of common helper classes for MPD

DISTNAME=		Audio-MPD-Common-1.110550
CATEGORIES=		audio

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
CPAN_AUTHOR=		JQUELIN

CONFIGURE_STYLE=	modbuild
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-Class-Accessor \
			devel/p5-MooseX-Has-Sugar \
			devel/p5-MooseX-Types \
			devel/p5-Readonly

.include <bsd.port.mk>
