# $OpenBSD: Makefile,v 1.2 2013/03/11 11:44:41 espie Exp $

COMMENT=	query Apache logfiles via SQL

DISTNAME=	asql-1.6
CATEGORIES=	www

HOMEPAGE=	http://www.steve.org.uk/Software/asql/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

RUN_DEPENDS =		devel/p5-Term-ReadLine-Gnu \
			databases/p5-DBD-SQLite

TEST_DEPENDS=	devel/p5-Test-Pod

NO_BUILD=		Yes
TEST_TARGET=		test

PKG_ARCH=		*

do-install:
		${INSTALL_SCRIPT} ${WRKSRC}/bin/asql ${PREFIX}/bin/
		pod2man ${WRKSRC}/bin/asql ${PREFIX}/man/man1/asql.1

.include <bsd.port.mk>
