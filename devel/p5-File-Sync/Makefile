# $OpenBSD: Makefile,v 1.11 2012/08/23 15:05:15 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the sync() system functions

MODULES=	cpan
V=		0.09
DISTNAME=	File-Sync-${V}
REVISION=	3
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

.include <bsd.port.mk>
