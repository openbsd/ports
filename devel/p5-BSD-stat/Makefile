# $OpenBSD: Makefile,v 1.11 2012/08/23 15:00:33 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	stat() with BSD 4.4 extentions

DISTNAME=	BSD-stat-1.21
REVISION=	4
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

MODULES=	cpan

.include <bsd.port.mk>
