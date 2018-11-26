# $OpenBSD: Makefile,v 1.8 2018/11/26 14:17:12 sebastia Exp $

COMMENT =	GNUstep frontend for xgamma

V =		0.7
REVISION =	6
DISTNAME =	displaycalibrator.app_${V}.orig
PKGNAME =	displaycalibrator-${V}
CATEGORIES =	graphics

HOMEPAGE =	http://wiki.gnustep.org/index.php/DisplayCalibrator.app
MASTER_SITES =	http://archive.ubuntu.com/ubuntu/pool/universe/d/displaycalibrator.app/

MODULES =	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}

WRKDIST =	${WRKDIR}/displaycalibrator-${V}

.include <bsd.port.mk>
