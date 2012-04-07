# $OpenBSD: Makefile,v 1.12 2012/04/07 16:46:05 sthen Exp $

COMMENT=	CDBI Authentication for Catalyst

DISTNAME=	Catalyst-Plugin-Authentication-Store-DBIC-0.11
REVISION=	2
CATEGORIES=	security

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
USE_GROFF =	Yes

RUN_DEPENDS=	databases/p5-DBIx-Class \
		databases/p5-Catalyst-Model-DBIC-Schema \
		devel/p5-Set-Object \
		devel/p5-MRO-Compat \
		security/p5-Catalyst-Plugin-Authentication \
		security/p5-Catalyst-Plugin-Authorization-Roles \
		www/p5-Catalyst-Plugin-Session-State-Cookie
REGRESS_DEPENDS=databases/p5-DBD-SQLite \
		devel/p5-Test-WWW-Mechanize-Catalyst \
		databases/p5-Class-DBI \
		security/p5-Crypt-SaltedHash \
		www/p5-Catalyst-Plugin-Session-PerUser

CONFIGURE_STYLE =	modinst

post-build:
	@rm -f ${WRKBUILD}/blib/lib/Catalyst/Plugin/Authentication/Store/DBIC.pm.orig

.include <bsd.port.mk>
