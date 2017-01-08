# $OpenBSD: Makefile,v 1.1.1.1 2017/01/08 01:16:32 bluhm Exp $

COMMENT =	more reliable benchmarking

DISTNAME =	Dumbbench-0.10

CATEGORIES =	benchmarks

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
CPAN_AUTHOR =		SMUELLER
RUN_DEPENDS =		devel/p5-Class-XSAccessor>=1.05 \
			devel/p5-Devel-CheckOS \
			devel/p5-Params-Util \
			math/p5-Number-WithError>=1.00 \
			math/p5-Statistics-CaseResampling>=0.06 \
			sysutils/p5-Capture-Tiny

PKG_ARCH =		*

.include <bsd.port.mk>
