# $OpenBSD: Makefile,v 1.16 2017/11/03 11:38:53 espie Exp $

COMMENT =	JSON converter that Does What I Want

MODULES =	cpan
DISTNAME =	JSON-DWIW-0.47
CATEGORIES =	converters

# Perl
PERMIT_PACKAGE_CDROM =		Yes
MAKE_ENV +=	CC='${CC}'

WANTLIB += c perl

.include <bsd.port.mk>
