# $OpenBSD: Makefile,v 1.13 2000/09/12 15:58:53 kevlo Exp $

DISTNAME=	swig1.3a4
PKGNAME=	swig-1.3a4
CATEGORIES=	devel
NEED_VERSION=	1.319

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://download.sourceforge.net/swig/

HOMEPAGE=	http://www.swig.org/

BUILD_DEPENDS+=	python::lang/python \
		tclsh8.3::lang/tcl/8.3 \
		guile::lang/guile \
		ruby::lang/ruby

WRKDIST=	${WRKDIR}/SWIG1.3a4

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu 
CONFIGURE_ARGS+=--with-tclincl=${LOCALBASE}/include/tcl8.3 \
		--with-tcllib==${LOCALBASE}/lib/tcl8.3 \
		--with-guilelib=${LOCALBASE}/lib

ALL_TARGET=	swig runtime

.include <bsd.port.mk>
