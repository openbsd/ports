# $OpenBSD: Makefile,v 1.10 2013/03/11 10:50:14 espie Exp $

SHARED_ONLY =	Yes

COMMENT =	generate fast XS accessors without runtime compilation

MODULES =	cpan
DISTNAME =	Class-XSAccessor-1.11
REVISION =	0
CATEGORIES =	devel
USE_GROFF =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-AutoXS-Header

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

.include <bsd.port.mk>
