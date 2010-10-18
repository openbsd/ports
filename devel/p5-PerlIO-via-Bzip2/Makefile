# $OpenBSD: Makefile,v 1.3 2010/10/18 17:48:05 espie Exp $

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
USE_GROFF =	Yes
RUN_DEPENDS=	::archivers/p5-Compress-Bzip2

.include <bsd.port.mk>
