# $OpenBSD: Makefile.inc,v 1.4 2013/03/11 12:27:54 sthen Exp $

CATEGORIES=	net

HOMEPAGE=	http://miniupnp.free.fr/

MAINTAINER ?=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}files/
NO_TEST=	Yes
