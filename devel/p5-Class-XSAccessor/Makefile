# $OpenBSD: Makefile,v 1.7 2010/12/03 11:44:28 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT =	generate fast XS accessors without runtime compilation

MODULES =	cpan
DISTNAME =	Class-XSAccessor-1.09
REVISION =	0
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
