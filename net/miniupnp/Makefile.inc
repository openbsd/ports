# $OpenBSD: Makefile.inc,v 1.2 2012/02/23 13:48:25 dcoppa Exp $

CATEGORIES=	net

HOMEPAGE=	http://miniupnp.free.fr/

MAINTAINER ?=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}files/
NO_REGRESS=	Yes
