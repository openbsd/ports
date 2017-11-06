# $OpenBSD: Makefile.inc,v 1.2 2017/11/06 09:53:33 ajacoutot Exp $

VERSION =	3.0.4
DISTNAME =	capstone-${VERSION}

CATEGORIES =	devel
HOMEPAGE =	http://www.capstone-engine.org/

MAINTAINER ?=	Benoit Lecocq <benoit@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES = 		http://capstone-engine.org/download/${VERSION}/
