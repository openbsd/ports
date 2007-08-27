# $OpenBSD: Makefile,v 1.4 2007/08/27 16:53:48 espie Exp $

COMMENT=	chemistry file translation program

V=		2.1.1
DISTNAME=	openbabel-${V}
CATEGORIES=	misc

SHARED_LIBS+=	inchi		0.1	# .0.1
SHARED_LIBS+=	openbabel	3.1	# .3.1

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

LIB_DEPENDS=	xml2.>=9::textproc/libxml
REGRESS_DEPENDS=::misc/openbabel

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_DOXYGEN=""
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-inchi

.include <bsd.port.mk>
