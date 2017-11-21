# $OpenBSD: Makefile,v 1.12 2017/11/21 00:13:04 naddy Exp $

COMMENT=	object-oriented SGML parser

DISTNAME=	OpenSP-1.5.2
PKGNAME=	${DISTNAME:L}
CATEGORIES=	textproc
REVISION=	2

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=openjade/}

SHARED_LIBS=	osp 0.0 # .4.0

HOMEPAGE=	http://openjade.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	textproc/intltool
WANTLIB=	c iconv intl m pthread ${COMPILER_LIBCXX}
LIB_DEPENDS=	devel/gettext
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-libiconv-prefix=${LOCALBASE} \
		--with-libintl-prefix=${LOCALBASE}

BUILD_DEPENDS +=	textproc/xmlto \
			textproc/docbook

post-install:
	mv ${PREFIX}/share/doc/{OpenSP,opensp}

.include <bsd.port.mk>
