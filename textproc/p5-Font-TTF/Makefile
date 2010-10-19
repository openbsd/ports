# $OpenBSD: Makefile,v 1.22 2010/10/19 07:54:22 espie Exp $

COMMENT=	perl module for TrueType font hacking

MODULES=	cpan
DISTNAME=	Font-TTF-0.45
CATEGORIES=	textproc
USE_GROFF =	Yes

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

post-patch:
	@rm -f ${WRKSRC}/lib/Font/TTF/*.orig

.include <bsd.port.mk>
