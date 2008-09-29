# $OpenBSD: Makefile,v 1.21 2008/09/29 18:32:12 simon Exp $

COMMENT=	perl interface to tar archives
COMES_WITH=	4.5

MODULES=	cpan

DISTNAME=	Archive-Tar-1.38

CATEGORIES=	archivers

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	:p5-IO-Zlib->=1.01:archivers/p5-IO-Zlib \
		:p5-IO-String->=1.05:devel/p5-IO-String \
		:p5-Text-Diff-*:textproc/p5-Text-Diff
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
