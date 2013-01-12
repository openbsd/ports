# $OpenBSD: Makefile,v 1.12 2013/01/12 14:14:51 benoit Exp $

COMMENT =	perl implementation of RIPE whois

DISTNAME =	Net-Whois-RIPE-2.002
CATEGORIES =	net

EPOCH =		0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Iterator-Util
REGRESS_DEPENDS =	devel/p5-Test-Exception
                         
.include <bsd.port.mk>
