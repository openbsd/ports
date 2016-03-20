# $OpenBSD: Makefile,v 1.19 2016/03/20 19:56:10 naddy Exp $

COMMENT=		SQLite2 drivers for the Perl DBI

DISTNAME=		DBD-SQLite2-0.37
CATEGORIES=		databases
MODULES=		cpan

MAINTAINER=		Robert Nagy <robert@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl

BUILD_DEPENDS=		databases/p5-DBI>=1.08
RUN_DEPENDS=		databases/p5-DBI>=1.08

MAKE_FLAGS=		CC='${CC}' \
			LD='${CC}'

.include <bsd.port.mk>
