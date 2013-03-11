# $OpenBSD: Makefile,v 1.15 2013/03/11 11:46:17 espie Exp $

COMMENT=	two-dimensional molecule drawing program

DISTNAME=	xdrawchem-1.9.9
REVISION=	4
CATEGORIES=	x11 biology

HOMEPAGE=	http://xdrawchem.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xdrawchem/}

WANTLIB=	c m pthread stdc++ z

MODULES=	x11/qt3

LIB_DEPENDS =	misc/openbabel>=2.2.0
WANTLIB +=	openbabel>=4

VMEM_WARNING=	Yes

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

MAKE_FLAGS=	LDFLAGS+="-lqt-mt -pthread -L${X11BASE}/lib"

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-qtincdir=${MODQT_INCDIR} \
		--with-qtlibdir=${MODQT_LIBDIR}

.include <bsd.port.mk>
