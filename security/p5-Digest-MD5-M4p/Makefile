# $OpenBSD: Makefile,v 1.14 2014/06/14 23:26:00 sthen Exp $
SHARED_ONLY=	Yes

COMMENT=	perl interface to a variant of the MD5 algorithm

MODULES=	cpan
DISTNAME=	Digest-MD5-M4p-0.01
REVISION=	4
CATEGORIES=	security

# same as perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

INSTALL_TARGET=	install_site

# trailing ^M after a \ for line continuation confuses gcc2
pre-patch:
	@perl -i -pe 's/\r$$//' ${WRKSRC}/M4p.xs

.include <bsd.port.mk>
