# $OpenBSD: Makefile.inc,v 1.3 2013/03/11 11:35:49 espie Exp $

CATEGORIES=	net

HOMEPAGE=	http://miniupnp.free.fr/

MAINTAINER ?=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}files/
NO_TEST=	Yes
