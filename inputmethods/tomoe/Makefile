# $OpenBSD: Makefile,v 1.13 2019/07/12 20:47:14 sthen Exp $

COMMENT=	japanese handwriting recognition library

DISTNAME=	tomoe-0.6.0
REVISION=	3

HOMEPAGE= 	https://osdn.jp/projects/tomoe/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tomoe/}

CATEGORIES=	inputmethods japanese

SHARED_LIBS +=  tomoe                1.0      # 1.0

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB =  ffi glib-2.0 gmodule-2.0 gobject-2.0 iconv intl pcre pthread

MODULES=	textproc/intltool

BUILD_DEPENDS=	textproc/gsed

LIB_DEPENDS=	devel/glib2

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_MYSQL_CONFIG="mysql_config-not-found" \
		ac_cv_path_UNZIP="unzip-not-found"

CONFIGURE_ARGS=	--without-python \
		--without-ruby \
		--with-svn-lib=/dev/null \
		--with-svn-include=/dev/null \
		--disable-unihan

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/

post-install:
	rm ${PREFIX}/lib/tomoe/module/dict/*.{a,la}
	rm ${PREFIX}/lib/tomoe/module/recognizer/*.{a,la}

.include <bsd.port.mk>
