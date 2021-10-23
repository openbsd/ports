# $OpenBSD: Makefile,v 1.12 2021/10/19 19:43:36 sebastia Exp $

COMMENT =	GNUstep frontend for xgamma

V =		0.7
REVISION =	10
DISTNAME =	displaycalibrator.app_${V}.orig
PKGNAME =	displaycalibrator-${V}
CATEGORIES =	graphics

HOMEPAGE =	http://wiki.gnustep.org/index.php/DisplayCalibrator.app
MASTER_SITES =	http://archive.ubuntu.com/ubuntu/pool/universe/d/displaycalibrator.app/

MODULES =	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}

WRKDIST =	${WRKDIR}/displaycalibrator-${V}

.include <bsd.port.mk>
