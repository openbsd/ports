# $OpenBSD: Makefile,v 1.11 2006/11/21 18:33:09 jasper Exp $

COMMENT=	"perl interface to ZIP files"

MODULES=	cpan

DISTNAME=	Archive-Zip-1.18

CATEGORIES=	archivers

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::archivers/p5-Compress-Zlib
REGRESS_DEPENDS=:zip-*:archivers/zip \
 		::devel/p5-Test-Pod

.include <bsd.port.mk>
