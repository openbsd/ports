# $OpenBSD: Makefile,v 1.1.1.1 2018/12/18 09:20:20 bentley Exp $

COMMENT =	JSON converter that Does What I Want

MODULES =	cpan
DISTNAME =	JSON-DWIW-0.47
CATEGORIES =	converters

# Perl
PERMIT_PACKAGE_CDROM =		Yes
MAKE_ENV +=	CC='${CC}'

WANTLIB += c perl

.include <bsd.port.mk>
