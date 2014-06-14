# $OpenBSD: Makefile,v 1.16 2014/06/14 23:24:53 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		SQLite2 drivers for the Perl DBI

DISTNAME=		DBD-SQLite2-0.33
REVISION=		5
CATEGORIES=		databases
MODULES=		cpan

MAINTAINER=		Robert Nagy <robert@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

BUILD_DEPENDS=		databases/p5-DBI>=1.08
RUN_DEPENDS=		databases/p5-DBI>=1.08

MAKE_FLAGS=		CC='${CC}' \
			LD='${CC}'

.include <bsd.port.mk>
