# $OpenBSD: Makefile,v 1.15 2016/03/20 19:56:21 naddy Exp $

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

.if ${MACHINE_ARCH} == "arm" || ${MACHINE_ARCH} == "sparc"
CONFIGURE_ENV +=	EV_EXTRA_DEFS="-DEV_NO_SMP"
.endif

.include <bsd.port.mk>
