# $OpenBSD: Makefile,v 1.15 2012/08/23 15:50:05 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	library of advanced math functions

MODULES=	cpan
DISTNAME=	Bit-Vector-7.1
REVISION=	2
CATEGORIES=	math
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

BUILD_DEPENDS=  ${RUN_DEPENDS}
RUN_DEPENDS=    devel/p5-Carp-Clan>=5.3

.include <bsd.port.mk>
