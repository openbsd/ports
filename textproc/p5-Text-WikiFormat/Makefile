# $OpenBSD: Makefile,v 1.15 2020/07/03 21:45:52 sthen Exp $

COMMENT=	translate Wiki formatted text into other formats

DISTNAME =	Text-WikiFormat-0.81
CATEGORIES=	textproc
MODULES=	cpan
PKG_ARCH=	*
REVISION =	0

# Perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/p5-URI

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
