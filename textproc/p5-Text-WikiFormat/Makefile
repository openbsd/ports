# $OpenBSD: Makefile,v 1.10 2011/03/17 12:17:41 jasper Exp $

COMMENT=	translate Wiki formatted text into other formats

DISTNAME=	Text-WikiFormat-0.79
CATEGORIES=	textproc
MODULES=	cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/p5-URI

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
