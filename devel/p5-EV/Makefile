# $OpenBSD: Makefile,v 1.16 2016/09/01 10:53:26 jasper Exp $

COMMENT =	perl interface to libev

MODULES =	cpan
DISTNAME =	EV-4.22
CATEGORIES =	devel
CPAN_AUTHOR =	MLEHMANN

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c perl pthread

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/libev \
			devel/p5-common-sense \
			devel/p5-Canary-Stability

.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ENV +=	EV_EXTRA_DEFS="-DEV_NO_SMP"
.endif

.include <bsd.port.mk>
