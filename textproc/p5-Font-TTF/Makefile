# $OpenBSD: Makefile,v 1.25 2013/03/11 11:42:43 espie Exp $

COMMENT=	perl module for TrueType font hacking

MODULES=	cpan
DISTNAME=	Font-TTF-0.48
CATEGORIES=	textproc
USE_GROFF =	Yes

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

pre-configure:
	@rm ${WRKSRC}/lib/Font/TTF/*.orig

.include <bsd.port.mk>
