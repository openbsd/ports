# $OpenBSD: Makefile,v 1.17 2020/07/03 21:44:30 sthen Exp $

COMMENT=		bunch of common helper classes for MPD

DISTNAME=		Audio-MPD-Common-2.003
CATEGORIES=		audio
REVISION=		0

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
