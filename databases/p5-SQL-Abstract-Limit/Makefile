# $OpenBSD: Makefile,v 1.3 2007/09/15 20:34:02 simon Exp $

COMMENT=	portability layer for LIMIT emulation

DISTNAME=	SQL-Abstract-Limit-0.12
CATEGORIES=	databases
MODULES=	cpan

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-SQL-Abstract \
		::databases/p5-DBI
REGRESS_DEPENDS=::devel/p5-Test-Exception

.include <bsd.port.mk>
