# $OpenBSD: Makefile.inc,v 1.3 2018/04/27 06:10:49 bentley Exp $

VERSION =	3.0.4
DISTNAME =	capstone-${VERSION}

CATEGORIES =	devel
HOMEPAGE =	https://www.capstone-engine.org/

MAINTAINER ?=	Benoit Lecocq <benoit@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://www.capstone-engine.org/download/${VERSION}/
