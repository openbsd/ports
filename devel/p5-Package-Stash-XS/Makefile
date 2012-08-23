# $OpenBSD: Makefile,v 1.3 2012/08/23 15:08:05 sthen Exp $

COMMENT =	faster and more correct implementation of Package::Stash
SHARED_ONLY =	Yes

MODULES =	cpan
DISTNAME =	Package-Stash-XS-0.25
REVISION =	0
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB += c

REGRESS_DEPENDS =	devel/p5-Test-Fatal

.include <bsd.port.mk>
