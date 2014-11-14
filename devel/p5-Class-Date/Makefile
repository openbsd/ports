# $OpenBSD: Makefile,v 1.31 2014/11/14 02:00:22 bluhm Exp $

COMMENT =		module for easy date and time manipulation

DISTNAME =		Class-Date-1.1.15

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

# In Date.xs the tm_zone field is not set so the test t/50_timezone.t
# fails.  Instead of implementing strftime_xs locally, use the POSIX
# module which has the propper fixes in Perl_my_strftime().
post-patch:
	rm ${WRKDIST}/Date.xs

.include <bsd.port.mk>
