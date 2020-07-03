# $OpenBSD: Makefile,v 1.21 2020/07/03 21:44:35 sthen Exp $

COMMENT=		SQLite2 drivers for the Perl DBI

DISTNAME=		DBD-SQLite2-0.37
CATEGORIES=		databases
MODULES=		cpan
REVISION=		0

MAINTAINER=		Robert Nagy <robert@openbsd.org>

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

BUILD_DEPENDS=		databases/p5-DBI>=1.08
RUN_DEPENDS=		databases/p5-DBI>=1.08

MAKE_FLAGS=		CC='${CC}' \
			LD='${CC}'

.include <bsd.port.mk>
