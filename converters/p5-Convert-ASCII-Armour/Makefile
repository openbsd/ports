# $OpenBSD: Makefile,v 1.3 2007/09/16 01:40:27 merdely Exp $

COMMENT=	convert binary octets into ASCII armoured messages

DISTNAME=	Convert-ASCII-Armour-1.4
CATEGORIES=	converters security
MODULES=	cpan

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::archivers/p5-Compress-Zlib

.include <bsd.port.mk>
