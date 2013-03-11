# $OpenBSD: Makefile,v 1.11 2013/03/11 11:42:45 espie Exp $

COMMENT=	translate Wiki formatted text into other formats

DISTNAME=	Text-WikiFormat-0.79
CATEGORIES=	textproc
MODULES=	cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/p5-URI

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
