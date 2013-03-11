# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:16 espie Exp $

SHARED_ONLY =		Yes

COMMENT =		expose the flag which marks global destruction

DISTNAME =		Devel-GlobalDestruction-0.03
REVISION =		0
CATEGORIES =		devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MODULES =		cpan
USE_GROFF =		Yes

RUN_DEPENDS =		devel/p5-Scope-Guard \
			devel/p5-Sub-Exporter

.include <bsd.port.mk>
