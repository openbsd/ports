# $OpenBSD: Makefile,v 1.2 2007/01/21 21:46:21 simon Exp $

COMMENT=		"Perl module for dumping Perl objects from/to XML"

MODULES=		cpan
DISTNAME=		XML-Dumper-0.81
CATEGORIES=		textproc devel

MAINTAINER=		Srebrenko Sehic <haver@insecure.dk>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::textproc/p5-XML-Parser \
			::archivers/p5-Compress-Zlib

.include <bsd.port.mk>
