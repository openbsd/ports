# $OpenBSD: Makefile,v 1.6 2008/09/01 08:51:03 brad Exp $

COMMENT=	chemistry file translation program

V=		2.2.0
DISTNAME=	openbabel-${V}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	misc

SHARED_LIBS+=	openbabel	4.0	# .3.0

HOMEPAGE=	http://openbabel.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=openbabel/}

WANTLIB=	c iconv m stdc++ z

SUBST_VARS=	V

BUILD_DEPENDS=	::devel/boost
LIB_DEPENDS=	xml2.>=9::textproc/libxml
REGRESS_DEPENDS=::misc/openbabel

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_DOXYGEN=""
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-inchi \
		--disable-wx-gui \
		--with-boost=${LOCALBASE}

.include <bsd.port.mk>
