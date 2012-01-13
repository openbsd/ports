# $OpenBSD: Makefile.inc,v 1.1 2012/01/13 09:24:28 ajacoutot Exp $

CATEGORIES=	net

HOMEPAGE=	http://miniupnp.free.fr/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}files/
NO_REGRESS=	Yes
