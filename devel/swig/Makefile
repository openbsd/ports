# $OpenBSD: Makefile,v 1.17 2001/02/19 18:32:10 danh Exp $

DISTNAME=	swig1.3a5
PKGNAME=	swig-1.3a5
CATEGORIES=	devel
NEED_VERSION=	1.338
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= swig

HOMEPAGE=       http://www.swig.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS+=	python1.5::lang/python15 \
		tclsh8.3::lang/tcl/8.3 \
		guile::lang/guile \
		ruby::lang/ruby

WRKDIST=	${WRKDIR}/SWIG1.3a5

CONFIGURE_STYLE=gnu 
CONFIGURE_ARGS+=--with-tclincl=${LOCALBASE}/include/tcl8.3 \
		--with-tcllib==${LOCALBASE}/lib/tcl8.3 \
		--with-guilelib=${LOCALBASE}/lib

ALL_TARGET=	swig runtime

.include <bsd.port.mk>
