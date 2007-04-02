# $OpenBSD: Makefile,v 1.15 2007/04/02 07:12:27 steven Exp $
# Original from: Yannick Cote

DISTNAME=		lam-6.5.9
PKGNAME=		${DISTNAME}p0
SHARED_LIBS +=  lamf77mpi	0.0	# .0.0
SHARED_LIBS +=  pmpi		0.0	# .0.0
SHARED_LIBS +=  lam		0.0	# .0.0
SHARED_LIBS +=  mpi		0.0	# .0.0
CATEGORIES=     	devel math net comms
COMMENT=		"great implementation of the message passing interface"

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c util

MASTER_SITES=		http://www.lam-mpi.org/download/files/ \
			http://www.thinkingnerds.com/lam/download/files/ \
			http://lam.squyres.com/download/files/ \
			http://lam.fries.net/download/files/ \
			http://lam.kresge.com/download/files/

HOMEPAGE=		http://www.lam-mpi.org/

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config ${WRKSRC}/mpi2c++
CONFIGURE_ARGS+=	--with-rsh="ssh -x"

.include <bsd.port.mk>
