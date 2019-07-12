# $OpenBSD: Makefile,v 1.16 2019/07/12 20:43:38 sthen Exp $

COMMENT=		bunch of common helper classes for MPD

DISTNAME=		Audio-MPD-Common-2.003
CATEGORIES=		audio

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Moose>=0.92 \
			devel/p5-MooseX-Has-Sugar \
			devel/p5-MooseX-Types \
			devel/p5-Readonly \
			devel/p5-String-Formatter

.include <bsd.port.mk>
