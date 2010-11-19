# $OpenBSD: Makefile,v 1.13 2010/11/19 07:23:10 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	library of advanced math functions

MODULES=	cpan
DISTNAME=	Bit-Vector-7.1
REVISION=	0
CATEGORIES=	math
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=  ${RUN_DEPENDS}
RUN_DEPENDS=    devel/p5-Carp-Clan>=5.3

.include <bsd.port.mk>
