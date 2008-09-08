# $OpenBSD: Makefile,v 1.21 2008/09/08 00:04:14 jasper Exp $

COMMENT=	perl module for TrueType font hacking

MODULES=	cpan
DISTNAME=	Font-TTF-0.45
CATEGORIES=	textproc

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

post-patch:
	@rm -f ${WRKSRC}/lib/Font/TTF/*.orig

.include <bsd.port.mk>
