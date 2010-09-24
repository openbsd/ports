# $OpenBSD: Makefile,v 1.11 2010/09/24 15:32:33 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	library of advanced math functions

MODULES=	cpan
DISTNAME=	Bit-Vector-7.1
REVISION=	0
CATEGORIES=	math

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=  ${RUN_DEPENDS}
RUN_DEPENDS=    :p5-Carp-Clan->=5.3:devel/p5-Carp-Clan

.include <bsd.port.mk>
