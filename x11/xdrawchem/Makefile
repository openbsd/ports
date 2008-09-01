# $OpenBSD: Makefile,v 1.7 2008/09/01 08:52:31 brad Exp $

COMMENT=	two-dimensional molecule drawing program

DISTNAME=	xdrawchem-1.9.9
PKGNAME=	${DISTNAME}p1
CATEGORIES=	x11 biology

HOMEPAGE=	http://xdrawchem.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xdrawchem/}

WANTLIB=	c m pthread stdc++ z

MODULES=	x11/qt3

LIB_DEPENDS=	openbabel.>=4:openbabel->=2.2.0:misc/openbabel

VMEM_WARNING=	Yes

USE_X11=	Yes
USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

MAKE_FLAGS=	LDFLAGS+="-lqt-mt -pthread -L${X11BASE}/lib"

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-qtincdir=${MODQT_INCDIR} \
		--with-qtlibdir=${MODQT_LIBDIR}

.if ${MACHINE_ARCH} == "sparc64" || ${MACHINE_ARCH} == "powerpc" || ${MACHINE_ARCH} == "arm"
PATCH_LIST=	patch-* gcc-*
.endif

.include <bsd.port.mk>
