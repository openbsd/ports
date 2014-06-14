# $OpenBSD: Makefile,v 1.12 2014/06/14 23:24:55 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	generate fast XS accessors without runtime compilation

MODULES =	cpan
DISTNAME =	Class-XSAccessor-1.16
CATEGORIES =	devel
REVISION =	0

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-AutoXS-Header

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

.include <bsd.port.mk>
