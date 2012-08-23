# $OpenBSD: Makefile,v 1.8 2012/08/23 15:52:47 sthen Exp $

COMMENT =	Perl interface to the swish-e C library
SHARED_ONLY =	Yes

DISTNAME =	swish-e-2.4.7
PKGNAME =	p5-SWISH-API-0.04
REVISION =	4
CATEGORIES =	textproc
MODULES =	cpan
USE_GROFF =	Yes

HOMEPAGE =	http://swish-e.org/
MASTER_SITES =	${HOMEPAGE}distribution/

MAINTAINER =	Michael Erdely <merdely@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c m z swish-e>=2.1

LIB_DEPENDS =	textproc/swish-e>=2.4.7

WRKSRC =	${WRKDIST}/perl

.include <bsd.port.mk>
