# $OpenBSD: Makefile,v 1.15 2011/07/11 14:04:42 jasper Exp $

COMMENT=	GiNaC is Not a Computer Algebra System (CAS)

DISTNAME=	ginac-1.5.8
REVISION=	2
SHARED_LIBS +=	ginac	2.0	# 0.3
CATEGORIES=	math

HOMEPAGE=	http://www.ginac.de/

MAINTAINER=	Paul Irofti <pirofti@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftpthep.physik.uni-mainz.de/pub/GiNaC/ \
		${HOMEPAGE}
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	c m ncurses readline stdc++ gmp cln

LIB_DEPENDS=	devel/cln

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu

REGRESS_TARGET=	check

.include <bsd.port.mk>
