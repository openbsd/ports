# $OpenBSD: Makefile,v 1.3 2000/04/09 17:36:17 espie Exp $
# Original from: Yannick Cote

DISTNAME=		lam-6.3.1
CATEGORIES=     	devel math net
FAKE=No

MAINTAINER=		yanick@openbsd.org

MASTER_SITES=		http://www.mpi.nd.edu/downloads/lam/

GNU_CONFIGURE=		yes 
CONFIGURE_ARGS+=	--prefix=${PREFIX}
CONFIGURE_ARGS+=	--with-rsh="ssh -x"

.include <bsd.port.mk>
