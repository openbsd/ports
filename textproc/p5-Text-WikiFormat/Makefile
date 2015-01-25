# $OpenBSD: Makefile,v 1.12 2015/01/25 09:37:51 benoit Exp $

COMMENT=	translate Wiki formatted text into other formats

DISTNAME =	Text-WikiFormat-0.81
CATEGORIES=	textproc
MODULES=	cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/p5-URI

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
