# $OpenBSD: Makefile,v 1.2 2006/01/06 13:38:06 bernd Exp $

COMMENT='automatic text creation from templates'
CATEGORIES=devel

DISTNAME=	autogen-5.6.5
SHARED_LIBS=	guileopts	0.1 \
		opts		23.1
MASTER_SITES=${MASTER_SITE_SOURCEFORGE:=autogen/}

# GPL
PERMIT_PACKAGE_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes

WANTLIB=	iconv c m z
LIB_DEPENDS=	guile::lang/guile \
		xml2::textproc/libxml
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-libregex \
		${ENABLE_SHARED}

MAKE_FLAGS+=	INFO_DEPS=
FAKE_FLAGS+=	INFO_DEPS= \
		DESTDIR=${WRKINST}
USE_LIBTOOL=	Yes
.include <bsd.port.mk>
