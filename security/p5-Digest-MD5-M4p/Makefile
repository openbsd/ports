# $OpenBSD: Makefile,v 1.16 2016/03/20 19:57:01 naddy Exp $

COMMENT=	perl interface to a variant of the MD5 algorithm

MODULES=	cpan
DISTNAME=	Digest-MD5-M4p-0.01
REVISION=	5
CATEGORIES=	security

# same as perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl

INSTALL_TARGET=	install_site

# trailing ^M after a \ for line continuation confuses gcc2
pre-patch:
	@perl -i -pe 's/\r$$//' ${WRKSRC}/M4p.xs

.include <bsd.port.mk>
