# $OpenBSD: Makefile,v 1.6 2010/11/20 19:56:50 espie Exp $

COMMENT =	Perl interface to the swish-e C library
SHARED_ONLY =	Yes

DISTNAME =	swish-e-2.4.7
PKGNAME =	p5-SWISH-API-0.04
REVISION =	2
CATEGORIES =	textproc
MODULES =	cpan
USE_GROFF =	Yes

MASTER_SITES =	http://swish-e.org/distribution/

MAINTAINER =	Michael Erdely <merdely@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

LIB_DEPENDS =	textproc/swish-e>=2.4.7
WANTLIB +=	m z swish-e>=2.1

WRKSRC =	${WRKDIST}/perl

.include <bsd.port.mk>
