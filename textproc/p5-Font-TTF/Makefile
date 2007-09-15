# $OpenBSD: Makefile,v 1.20 2007/09/15 20:59:39 merdely Exp $

COMMENT=	perl module for TrueType font hacking

MODULES=	cpan
DISTNAME=	Font-TTF-0.40
CATEGORIES=	textproc

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

post-patch:
	@rm -f ${WRKSRC}/lib/Font/TTF/*.orig

.include <bsd.port.mk>
