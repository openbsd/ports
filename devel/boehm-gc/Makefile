# New ports collection makefile for:	boehm-gc
# Version required:	4.12
# Date created:		3 April 1999
# Whom:			Niklas Hallqvist <niklas@openbsd.org>
#
# $FreeBSD: Makefile,v 1.4 1999/01/10 20:12:06 steve Exp $
#

DISTNAME=	gc4.12
PKGNAME=	boehm-gc-4.12
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.parc.xerox.com/pub/gc/ \
		http://reality.sgi.com/employees/boehm_mti/gc_source/

MAINTAINER=	niklas@openbsd.org

FETCH_BEFORE_ARGS=	-b
EXTRACT_AFTER_ARGS=	|| true

WRKSRC=		${WRKDIR}/gc
MAN3=		gc.3
ALL_TARGET=	OpenBSD-pkg-all
INSTALL_TARGET=	OpenBSD-pkg-install
MAKE_ENV+=	CP="${CP}"
MAKE_ENV+=	CXX="${CXX}"
MAKE_ENV+=	INSTALL_DATA="${INSTALL_DATA}"
MAKE_ENV+=	INSTALL_MAN="${INSTALL_MAN}"

.include <bsd.port.mk>
