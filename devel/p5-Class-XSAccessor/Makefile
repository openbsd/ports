# $OpenBSD: Makefile,v 1.2 2010/07/03 02:44:14 naddy Exp $

SHARED_ONLY =	Yes

COMMENT =	generate fast XS accessors without runtime compilation

MODULES =	cpan
DISTNAME =	Class-XSAccessor-1.03
CATEGORIES =	devel

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	::devel/p5-AutoXS-Header

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

.include <bsd.port.mk>
