# $OpenBSD: Makefile,v 1.14 2000/10/05 03:16:12 kevlo Exp $

DISTNAME=	swig1.3a5
PKGNAME=	swig-1.3a5
CATEGORIES=	devel
NEED_VERSION=	1.338

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

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

WRKDIST=	${WRKDIR}/SWIG1.3a5

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu 
CONFIGURE_ARGS+=--with-tclincl=${LOCALBASE}/include/tcl8.3 \
		--with-tcllib==${LOCALBASE}/lib/tcl8.3 \
		--with-guilelib=${LOCALBASE}/lib

ALL_TARGET=	swig runtime

.include <bsd.port.mk>
