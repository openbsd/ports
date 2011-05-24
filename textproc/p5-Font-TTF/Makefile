# $OpenBSD: Makefile,v 1.24 2011/05/24 20:52:56 jasper Exp $

COMMENT=	perl module for TrueType font hacking

MODULES=	cpan
DISTNAME=	Font-TTF-0.48
CATEGORIES=	textproc
USE_GROFF =	Yes

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

pre-configure:
	@rm ${WRKSRC}/lib/Font/TTF/*.orig

.include <bsd.port.mk>
