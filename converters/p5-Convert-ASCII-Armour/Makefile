# $OpenBSD: Makefile,v 1.1.1.1 2005/02/06 15:14:21 sturm Exp $

COMMENT=	"convert binary octets into ASCII armoured messages"

DISTNAME=	Convert-ASCII-Armour-1.4
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
RUN_DEPENDS=	::archivers/p5-Compress-Zlib

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
