# $OpenBSD: Makefile,v 1.6 2006/11/13 09:53:21 espie Exp $

COMMENT=	"IO:: style interface to Compress::Zlib"

MODULES=	cpan

DISTNAME=	IO-Zlib-1.04
PKGNAME=	p5-${DISTNAME}p0
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
