# $OpenBSD: Makefile,v 1.2 2010/09/05 10:32:54 sthen Exp $

COMMENT=	implement PerlIO layers which let you handle bzip2 files

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
