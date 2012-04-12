# $OpenBSD: Makefile,v 1.7 2012/04/12 19:05:01 gsoares Exp $

COMMENT=		simple 24 hours clock object

MODULES=		cpan
DISTNAME=		Time-Clock-0.12
REVISION=		0
CATEGORIES=		devel
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>	
