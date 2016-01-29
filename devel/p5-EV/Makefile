# $OpenBSD: Makefile,v 1.13 2016/01/29 08:09:58 dcoppa Exp $

SHARED_ONLY =	Yes
COMMENT =	perl interface to libev

MODULES =	cpan
DISTNAME =	EV-4.22
CATEGORIES =	devel
CPAN_AUTHOR =	MLEHMANN

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/libev \
			devel/p5-common-sense \
			devel/p5-Canary-Stability

.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ENV +=	EV_EXTRA_DEFS="-DEV_NO_SMP"
.endif

.include <bsd.port.mk>
