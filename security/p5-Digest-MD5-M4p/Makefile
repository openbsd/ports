# $OpenBSD: Makefile,v 1.4 2007/01/15 17:40:10 simon Exp $
SHARED_ONLY=	Yes

COMMENT=	"perl interface to a variant of the MD5 algorithm"

MODULES=	cpan
DISTNAME=	Digest-MD5-M4p-0.01
CATEGORIES=	security

# same as perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

INSTALL_TARGET=	install_site

# trailing ^M after a \ for line continuation confuses gcc2
pre-patch:
	@perl -i -pe 's/\r$$//' ${WRKSRC}/M4p.xs

.include <bsd.port.mk>
