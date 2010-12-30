# $OpenBSD: Makefile,v 1.10 2010/12/30 16:20:57 benoit Exp $

COMMENT =	perl implementation of RIPE whois

DISTNAME =	Net-Whois-RIPE-2.00002
CATEGORIES =	net

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan

USE_GROFF =		Yes

RUN_DEPENDS =		devel/p5-Test-Exception \
			devel/p5-Module-Install \
			devel/p5-Iterator-Util
REGRESS_DEPENDS =       ${RUN_DEPENDS}
                         
.include <bsd.port.mk>
