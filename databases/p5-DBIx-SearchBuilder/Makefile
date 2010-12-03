# $OpenBSD: Makefile,v 1.14 2010/12/03 11:44:24 ajacoutot Exp $

COMMENT=	encapsulate SQL queries and rows in simple perl objects

MODULES=	cpan

DISTNAME=	DBIx-SearchBuilder-1.56
REVISION=	0
CATEGORIES=	databases
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	databases/p5-DBD-SQLite \
		databases/p5-DBIx-DBSchema \
		devel/p5-Cache-Simple-TimedExpiry \
		devel/p5-Class-Accessor \
		devel/p5-Class-ReturnValue \
		devel/p5-Clone \
		devel/p5-capitalization \
		devel/p5-Want

REGRESS_DEPENDS= devel/p5-Test-Pod \
		 devel/p5-Devel-StackTrace

.include <bsd.port.mk>
