# $OpenBSD: Makefile,v 1.12 2010/12/03 11:44:24 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		SQLite2 drivers for the Perl DBI

DISTNAME=		DBD-SQLite2-0.33
REVISION=		3
CATEGORIES=		databases
MODULES=		cpan
USE_GROFF =		Yes

MAINTAINER=		Robert Nagy <robert@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		databases/p5-DBI>=1.08
RUN_DEPENDS=		databases/p5-DBI>=1.08

MAKE_FLAGS=		CC='${CC}' \
			LD='${CC}'

.include <bsd.port.mk>
