# $OpenBSD: Makefile,v 1.2 2000/01/29 00:48:30 yanick Exp $
# Original from: Yannick Cote

DISTNAME=		lam-6.3.1
CATEGORIES=     	devel math net

MAINTAINER=		yanick@openbsd.org

MASTER_SITES=		http://www.mpi.nd.edu/downloads/lam/

GNU_CONFIGURE=		yes 
CONFIGURE_ARGS+=	--prefix=${PREFIX}
CONFIGURE_ARGS+=	--with-rsh="ssh -x"

.include <bsd.port.mk>
