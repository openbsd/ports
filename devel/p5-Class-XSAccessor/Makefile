# $OpenBSD: Makefile,v 1.6 2010/12/01 14:06:43 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	generate fast XS accessors without runtime compilation

MODULES =	cpan
DISTNAME =	Class-XSAccessor-1.09
CATEGORIES =	devel
USE_GROFF =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-AutoXS-Header

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

.include <bsd.port.mk>
