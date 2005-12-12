# $OpenBSD: Makefile,v 1.2 2005/12/12 20:50:12 sturm Exp $

COMMENT=	"DSA Signatures and Key Generation"

DISTNAME=	Crypt-DSA-0.13
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Crypt/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::converters/p5-Convert-PEM \
		::devel/p5-Data-Buffer \
		::security/p5-Digest-SHA1

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
