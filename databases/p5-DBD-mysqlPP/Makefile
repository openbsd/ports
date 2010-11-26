# $OpenBSD: Makefile,v 1.10 2010/11/26 07:18:59 espie Exp $

COMMENT=		Pure Perl MySQL driver for the Perl DBI

DISTNAME=		DBD-mysqlPP-0.04
CATEGORIES=		databases
MODULES=		cpan
USE_GROFF =		Yes

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		databases/p5-DBI>=1.14 \
			net/p5-Net-MySQL>=0.08
RUN_DEPENDS=		databases/p5-DBI>=1.14 \
			net/p5-Net-MySQL>=0.08

.include <bsd.port.mk>
