# $OpenBSD: Makefile,v 1.25 2015/03/16 18:07:41 naddy Exp $
# Original from: Yannick Cote

DISTNAME=		lam-6.5.9
REVISION =		3
SHARED_LIBS +=  lamf77mpi	0.0	# .0.0
SHARED_LIBS +=  pmpi		0.0	# .0.0
SHARED_LIBS +=  lam		0.0	# .0.0
SHARED_LIBS +=  mpi		0.0	# .0.0
CATEGORIES=     	devel math net comms
COMMENT=		great implementation of the message passing interface

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c util

MASTER_SITES=		http://www.lam-mpi.org/download/files/ \
			http://www.thinkingnerds.com/lam/download/files/ \
			http://lam.squyres.com/download/files/ \
			http://lam.fries.net/download/files/ \
			http://lam.kresge.com/download/files/

HOMEPAGE=		http://www.lam-mpi.org/

USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config ${WRKSRC}/mpi2c++
CONFIGURE_ARGS+=	--with-rsh="ssh -x"

MODULES=		fortran
MODFORTRAN_COMPILER = 	g77
BUILD_DEPENDS=		${MODFORTRAN_BUILD_DEPENDS}

.include <bsd.port.mk>
