# $OpenBSD: Makefile,v 1.4 2010/10/18 17:06:08 espie Exp $

COMMENT=	portability layer for LIMIT emulation

DISTNAME=	SQL-Abstract-Limit-0.12
CATEGORIES=	databases
MODULES=	cpan
USE_GROFF =	Yes

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-SQL-Abstract \
		::databases/p5-DBI
REGRESS_DEPENDS=::devel/p5-Test-Exception

.include <bsd.port.mk>
