# $OpenBSD: Makefile,v 1.7 2011/07/10 12:02:29 jasper Exp $

COMMENT=	portability layer for LIMIT emulation

DISTNAME=	SQL-Abstract-Limit-0.141
CATEGORIES=	databases
MODULES=	cpan
USE_GROFF =	Yes

# SPerl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	databases/p5-SQL-Abstract \
		databases/p5-DBI
REGRESS_DEPENDS=devel/p5-Test-Exception

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
