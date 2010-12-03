# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:34 ajacoutot Exp $

COMMENT=	implement PerlIO layers which let you handle bzip2 files

DISTNAME=	PerlIO-via-Bzip2-0.02
REVISION=	0
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
USE_GROFF =	Yes
RUN_DEPENDS=	archivers/p5-Compress-Bzip2

.include <bsd.port.mk>
