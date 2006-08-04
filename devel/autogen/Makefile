# $OpenBSD: Makefile,v 1.4 2006/08/04 16:31:00 espie Exp $

COMMENT='automatic text creation from templates'
CATEGORIES=devel

DISTNAME=	autogen-5.6.5
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	guileopts	0.1 \
		opts		23.1
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
