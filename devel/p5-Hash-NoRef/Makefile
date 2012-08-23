# $OpenBSD: Makefile,v 1.7 2012/08/23 15:05:15 sthen Exp $

COMMENT=	HASH that stores values without a reference count increase

SHARED_ONLY=	Yes

DISTNAME=	Hash-NoRef-0.03
REVISION=	3
CATEGORIES=	devel
MODULES=	cpan
USE_GROFF =	Yes

CPAN_AUTHOR=	GMPASSOS

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

.include <bsd.port.mk>
