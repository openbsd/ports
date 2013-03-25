# $OpenBSD: Makefile,v 1.9 2013/03/25 23:29:55 sthen Exp $

COMMENT =		expose the flag which marks global destruction

DISTNAME =		Devel-GlobalDestruction-0.03
REVISION =		1
CATEGORIES =		devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Scope-Guard \
			devel/p5-Sub-Exporter

.include <bsd.port.mk>
