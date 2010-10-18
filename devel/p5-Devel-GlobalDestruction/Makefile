# $OpenBSD: Makefile,v 1.3 2010/10/18 17:47:59 espie Exp $

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
USE_GROFF =	Yes

RUN_DEPENDS =		::devel/p5-Scope-Guard \
			::devel/p5-Sub-Exporter

.include <bsd.port.mk>
