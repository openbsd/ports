# $OpenBSD: Makefile,v 1.11 2013/03/20 23:33:15 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	generate fast XS accessors without runtime compilation

MODULES =	cpan
DISTNAME =	Class-XSAccessor-1.16
CATEGORIES =	devel

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-AutoXS-Header

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

.include <bsd.port.mk>
