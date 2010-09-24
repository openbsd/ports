# $OpenBSD: Makefile,v 1.2 2010/09/24 15:23:07 sthen Exp $

SHARED_ONLY =		Yes

COMMENT =		expose the flag which marks global destruction

DISTNAME =		Devel-GlobalDestruction-0.02
REVISION =		0
CATEGORIES =		devel

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan

RUN_DEPENDS =		::devel/p5-Scope-Guard \
			::devel/p5-Sub-Exporter

.include <bsd.port.mk>
