# $OpenBSD: Makefile,v 1.4 2019/07/12 20:50:18 sthen Exp $

COMMENT=	query Apache logfiles via SQL

DISTNAME=	asql-1.7
CATEGORIES=	www

HOMEPAGE=	http://www.steve.org.uk/Software/asql/

# Perl
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${HOMEPAGE}

RUN_DEPENDS=		devel/p5-Term-ReadLine-Gnu \
			devel/p5-Regexp-IPv6 \
			databases/p5-DBD-SQLite

TEST_DEPENDS=		devel/p5-Test-Pod

NO_BUILD=		Yes
TEST_TARGET=		test

PKG_ARCH=		*

do-install:
		${INSTALL_SCRIPT} ${WRKSRC}/bin/asql ${PREFIX}/bin/
		pod2man ${WRKSRC}/bin/asql ${PREFIX}/man/man1/asql.1

.include <bsd.port.mk>
