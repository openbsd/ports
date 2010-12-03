# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:25 ajacoutot Exp $

COMMENT=	portability layer for LIMIT emulation

DISTNAME=	SQL-Abstract-Limit-0.12
REVISION=	0
CATEGORIES=	databases
MODULES=	cpan
USE_GROFF =	Yes

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	databases/p5-SQL-Abstract \
		databases/p5-DBI
REGRESS_DEPENDS=devel/p5-Test-Exception

.include <bsd.port.mk>
