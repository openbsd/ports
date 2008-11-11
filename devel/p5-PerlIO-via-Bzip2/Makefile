# $OpenBSD: Makefile,v 1.1.1.1 2008/11/11 14:12:01 kevlo Exp $

COMMENT=	implement PerlIO layers which let you handle bzip2 files

MODULES=	cpan
DISTNAME=	PerlIO-via-Bzip2-0.02
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
RUN_DEPENDS=	::archivers/p5-Compress-Bzip2

.include <bsd.port.mk>
