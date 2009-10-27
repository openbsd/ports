# $OpenBSD: Makefile,v 1.1.1.1 2009/10/27 02:23:55 kevlo Exp $

COMMENT=	declarative validation of data structures

DISTNAME=	Declare-Constraints-Simple-0.03

CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=	PHAYLON

MODULES=	cpan
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Carp-Clan \
		::devel/p5-Class-Inspector \
		::devel/p5-aliased

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
