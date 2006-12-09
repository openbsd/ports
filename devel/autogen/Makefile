# $OpenBSD: Makefile,v 1.7 2006/12/09 19:00:49 kili Exp $

COMMENT='automatic text creation from templates'
CATEGORIES=devel

DISTNAME=	autogen-5.8.7
PKGNAME=	${DISTNAME}p0
SHARED_LIBS +=	opts                 27.5     # .27.5
SHARED_LIBS +=	guileopts            1.0      # .0.1
HOMEPAGE=http://autogen.sourceforge.net/
MASTER_SITES=${MASTER_SITE_SOURCEFORGE:=autogen/}

# GPL
PERMIT_PACKAGE_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes

MODULES=	converters/libiconv

WANTLIB=	c m z
LIB_DEPENDS=	guile,guile-ltdl::lang/guile \
		xml2::textproc/libxml
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-libregex \
		--includedir=${PREFIX}/include/autogen \
		${ENABLE_SHARED}

MAKE_FLAGS+=	INFO_DEPS=
FAKE_FLAGS+=	INFO_DEPS= \
		DESTDIR=${WRKINST}
USE_LIBTOOL=	Yes
.include <bsd.port.mk>
