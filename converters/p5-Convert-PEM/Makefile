# $OpenBSD: Makefile,v 1.1.1.1 2005/02/06 15:15:40 sturm Exp $

COMMENT=	"read/write access to ASN.1-encoded PEM files"

DISTNAME=	Convert-PEM-0.06
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
		::security/p5-Crypt-DES-EDE3

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
