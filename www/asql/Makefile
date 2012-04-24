# $OpenBSD: Makefile,v 1.1.1.1 2012/04/24 09:52:08 pea Exp $

COMMENT=	query Apache logfiles via SQL

DISTNAME=	asql-1.6
CATEGORIES=	www

HOMEPAGE=	http://www.steve.org.uk/Software/asql/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

RUN_DEPENDS =		devel/p5-Term-ReadLine-Gnu \
			databases/p5-DBD-SQLite

REGRESS_DEPENDS=	devel/p5-Test-Pod

NO_BUILD=		Yes
REGRESS_TARGET=		test

PKG_ARCH=		*

do-install:
		${INSTALL_SCRIPT} ${WRKSRC}/bin/asql ${PREFIX}/bin/
		pod2man ${WRKSRC}/bin/asql ${PREFIX}/man/man1/asql.1

.include <bsd.port.mk>
