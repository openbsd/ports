# $OpenBSD: Makefile,v 1.7 2009/06/18 11:09:35 jim Exp $

SHARED_ONLY =	Yes

COMMENT =	JSON serialising/deserialising, done correctly and fast

MODULES =	cpan
DISTNAME =	JSON-XS-2.24
# there was a version with three digits after the dot,                                                                                                        
# pad to that length for seamless updates                                                                                                                     
PKGNAME =      p5-${DISTNAME}0
CATEGORIES =	converters

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

.include <bsd.port.mk>
