# $OpenBSD: Makefile,v 1.12 2013/03/11 11:41:27 espie Exp $
SHARED_ONLY=	Yes

COMMENT=	perl interface to a variant of the MD5 algorithm

MODULES=	cpan
DISTNAME=	Digest-MD5-M4p-0.01
REVISION=	3
CATEGORIES=	security
USE_GROFF =	Yes

# same as perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

INSTALL_TARGET=	install_site

# trailing ^M after a \ for line continuation confuses gcc2
pre-patch:
	@perl -i -pe 's/\r$$//' ${WRKSRC}/M4p.xs

.include <bsd.port.mk>
