# $OpenBSD: Makefile,v 1.8 2010/11/15 19:46:03 espie Exp $

COMMENT=        merge associative arrays

MODULES=	cpan
DISTNAME=	Hash-Merge-0.12
CATEGORIES=     devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Clone
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
