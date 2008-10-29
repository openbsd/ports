# $Id: Makefile,v 1.4 2008/10/29 16:26:14 pirofti Exp $

COMMENT=	GiNaC is Not a Computer Algebra System (CAS)

DISTNAME=	ginac-1.4.3
SHARED_LIBS +=	ginac	1.0	# 0.3
CATEGORIES=	math

HOMEPAGE=	http://www.ginac.de/

MAINTAINER=	Paul Irofti <pirofti@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftpthep.physik.uni-mainz.de/pub/GiNaC/ \
		${HOMEPAGE}
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	c m ncurses readline stdc++ gmp

LIB_DEPENDS=	cln::devel/cln

MODULES=	gcc3
MODGCC3_ARGHES=	sparc
MODGCC3_LANGS=	c++

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
