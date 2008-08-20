# $OpenBSD: Makefile,v 1.5 2008/08/20 16:08:11 ajacoutot Exp $

COMMENT=	chemistry file translation program

V=		2.2.0
DISTNAME=	openbabel-${V}
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

WANTLIB=	c iconv m z

# needs the __builtin_popcount built-in function (gcc>=3.4) 
MODULES+=	gcc4
MODGCC4_LANGS=	c++
MODGCC4_ARCHES=	*

SUBST_VARS=	V

LIB_DEPENDS=	xml2.>=9::textproc/libxml
REGRESS_DEPENDS=::misc/openbabel

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_DOXYGEN=""
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-inchi \
		--disable-wx-gui

.include <bsd.port.mk>
