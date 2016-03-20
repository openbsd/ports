# $OpenBSD: Makefile,v 1.13 2016/03/20 19:57:10 naddy Exp $

COMMENT=	translate Wiki formatted text into other formats

DISTNAME =	Text-WikiFormat-0.81
CATEGORIES=	textproc
MODULES=	cpan
PKG_ARCH=	*

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/p5-URI

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
