# $OpenBSD: Makefile,v 1.6 2008/10/02 20:34:39 simon Exp $

SHARED_ONLY=		Yes

COMMENT=		SQLite2 drivers for the Perl DBI

DISTNAME=		DBD-SQLite2-0.33
PKGNAME=		p5-${DISTNAME}p1
CATEGORIES=		databases
MODULES=		cpan

MAINTAINER=		Robert Nagy <robert@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		:p5-DBI->=1.08:databases/p5-DBI
RUN_DEPENDS=		:p5-DBI->=1.08:databases/p5-DBI

MAKE_FLAGS=		CC='${CC}' \
			LD='${CC}'

.include <bsd.port.mk>
