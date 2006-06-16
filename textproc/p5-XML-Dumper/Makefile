# $OpenBSD: Makefile,v 1.1.1.1 2006/06/16 15:55:59 steven Exp $

COMMENT=		"Perl module for dumping Perl objects from/to XML"

DISTNAME=		XML-Dumper-0.81
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		textproc devel perl5 
PKG_ARCH=		*

MAINTAINER=		Srebrenko Sehic <haver@insecure.dk>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=XML/}

RUN_DEPENDS=		::textproc/p5-XML-Parser \
			::archivers/p5-Compress-Zlib
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE= 	perl

.include <bsd.port.mk>
