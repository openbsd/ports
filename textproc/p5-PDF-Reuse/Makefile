# $OpenBSD: Makefile,v 1.2 2007/01/21 21:46:21 simon Exp $

COMMENT=	"perl module for manipulating PDF files"

MODULES=	cpan
DISTNAME=	PDF-Reuse-0.33
CATEGORIES=	textproc

MAINTAINER=	Sam Smith <S@mSmith.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Compress-Zlib-*:archivers/p5-Compress-Zlib
REGRESS_DEPENDS=${RUN_DEPENDS}

.include <bsd.port.mk>
