# $OpenBSD: Makefile,v 1.6 2010/10/07 15:10:14 stephan Exp $

COMMENT=        merge associative arrays

MODULES=	cpan
DISTNAME=	Hash-Merge-0.12
CATEGORIES=     devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Clone
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
