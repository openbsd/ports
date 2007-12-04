# $OpenBSD: Makefile,v 1.9 2007/12/04 13:40:46 steven Exp $

COMMENT=	IO:: style interface to Compress::Zlib

MODULES=	cpan

DISTNAME=	IO-Zlib-1.08
CATEGORIES=	archivers

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Compress-Zlib->1.15:archivers/p5-Compress-Zlib
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
