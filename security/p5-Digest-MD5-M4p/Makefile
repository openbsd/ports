# $OpenBSD: Makefile,v 1.13 2013/10/11 23:50:51 naddy Exp $
SHARED_ONLY=	Yes

COMMENT=	perl interface to a variant of the MD5 algorithm

MODULES=	cpan
DISTNAME=	Digest-MD5-M4p-0.01
REVISION=	3
CATEGORIES=	security

# same as perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

INSTALL_TARGET=	install_site

# trailing ^M after a \ for line continuation confuses gcc2
pre-patch:
	@perl -i -pe 's/\r$$//' ${WRKSRC}/M4p.xs

.include <bsd.port.mk>
