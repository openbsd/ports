# $OpenBSD: Makefile,v 1.5 2000/10/22 15:41:47 espie Exp $
# Original from: Yannick Cote

DISTNAME=		lam-6.3.1
NEED_VERSION=		1.305
CATEGORIES=     	devel math net
FAKE=No

MAINTAINER=		yanick@openbsd.org
BROKEN=			"Waiting for the 6.3.3 version which will contain a decent build process."

MASTER_SITES=		http://www.mpi.nd.edu/downloads/lam/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-rsh="ssh -x"

.include <bsd.port.mk>
