# $OpenBSD: Makefile,v 1.11 2000/06/13 14:31:56 kevlo Exp $

DISTNAME=	swig1.3a2
PKGNAME=	swig-1.3a2
CATEGORIES=	devel
NEED_VERSION=	1.301

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://download.sourceforge.net/swig/

HOMEPAGE=	http://www.swig.org/

BUILD_DEPENDS+=	python::lang/python \
		tclsh8.3::lang/tcl/8.3 \
		guile::lang/guile

WRKDIST=	${WRKDIR}/SWIG1.3a2

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu dest
CONFIGURE_ARGS+=--with-tclincl=${LOCALBASE}/include/tcl8.3 \
		--with-tcllib==${LOCALBASE}/lib/tcl8.3 \
		--with-guilelib=${LOCALBASE}/lib

ALL_TARGET=	swig runtime

.include <bsd.port.mk>
