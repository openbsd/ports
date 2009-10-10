# $OpenBSD: Makefile,v 1.1.1.1 2009/10/10 08:15:52 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	generate fast XS accessors without runtime compilation

MODULES =	cpan
DISTNAME =	Class-XSAccessor-1.03
CATEGORIES =	devel

BUILD_DEPENDS =	::devel/p5-AutoXS-Header
RUN_DEPENDS =	${BUILD_DEPENDS}

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

.include <bsd.port.mk>
