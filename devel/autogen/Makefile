# $OpenBSD: Makefile,v 1.10 2009/10/11 18:49:57 kili Exp $

COMMENT=automatic text creation from templates
CATEGORIES=devel

DISTNAME=	autogen-5.8.7
PKGNAME=	${DISTNAME}p1
SHARED_LIBS +=	opts                 27.5     # .27.5
SHARED_LIBS +=	guileopts            1.0      # .0.1
HOMEPAGE=http://autogen.sourceforge.net/
MASTER_SITES=${MASTER_SITE_SOURCEFORGE:=autogen/}

# GPLv2
PERMIT_PACKAGE_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes

MODULES=	devel/gettext

WANTLIB=	c gmp ltdl m pthread z
LIB_DEPENDS=	guile::lang/guile \
		xml2::textproc/libxml
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-libregex \
		--includedir=${PREFIX}/include/autogen \
		${ENABLE_SHARED}

MAKE_FLAGS+=	INFO_DEPS=
USE_LIBTOOL=	Yes
.include <bsd.port.mk>
