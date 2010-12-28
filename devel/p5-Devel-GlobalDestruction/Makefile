# $OpenBSD: Makefile,v 1.6 2010/12/28 22:28:26 benoit Exp $

SHARED_ONLY =		Yes

COMMENT =		expose the flag which marks global destruction

DISTNAME =		Devel-GlobalDestruction-0.03
CATEGORIES =		devel

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan
USE_GROFF =		Yes

RUN_DEPENDS =		devel/p5-Scope-Guard \
			devel/p5-Sub-Exporter

.include <bsd.port.mk>
