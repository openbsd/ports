# $OpenBSD: Makefile,v 1.2 2005/08/07 09:50:32 sturm Exp $

COMMENT=	"read/write access to ASN.1-encoded PEM files"

DISTNAME=	Convert-PEM-0.07
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	converters security perl5

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Convert/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::converters/p5-Convert-ASN1 \
		::devel/p5-Class-ErrorHandler \
		::security/p5-Crypt-DES-EDE3

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
