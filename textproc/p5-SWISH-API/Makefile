# $OpenBSD: Makefile,v 1.13 2015/10/29 18:25:32 ajacoutot Exp $

COMMENT =	Perl interface to the swish-e C library
SHARED_ONLY =	Yes

DISTNAME =	swish-e-2.4.7
PKGNAME =	p5-SWISH-API-0.04
REVISION =	7
CATEGORIES =	textproc
MODULES =	cpan

HOMEPAGE =	http://swish-e.org/
MASTER_SITES =	${HOMEPAGE}distribution/

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m z swish-e>=2.1

LIB_DEPENDS =	textproc/swish-e>=2.4.7

WRKSRC =	${WRKDIST}/perl

.include <bsd.port.mk>
