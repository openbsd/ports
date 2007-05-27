# $OpenBSD: Makefile,v 1.3 2007/05/27 14:03:53 martynas Exp $

COMMENT=	"database-independent schema objects"

DISTNAME=	DBIx-DBSchema-0.32
CATEGORIES=	databases
MODULES=	cpan

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-FreezeThaw \
		::databases/p5-DBI

.include <bsd.port.mk>
