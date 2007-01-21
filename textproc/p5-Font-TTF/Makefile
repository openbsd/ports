# $OpenBSD: Makefile,v 1.19 2007/01/21 21:46:20 simon Exp $

COMMENT=	"perl module for TrueType font hacking"

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
