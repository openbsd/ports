# $OpenBSD: Makefile,v 1.11 2010/11/15 00:22:52 espie Exp $

COMMENT=	sql parsing and processing

MODULES=	cpan
DISTNAME=	SQL-Statement-1.22
CATEGORIES=	databases
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

CONFIGURE_ENV += SQL_STATEMENT_WARN_UPDATE=sure
# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

.include <bsd.port.mk>
