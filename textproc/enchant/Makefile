# $OpenBSD: Makefile,v 1.6 2008/11/13 17:08:18 ajacoutot Exp $

COMMENT=	generic spell checking library/wrapper

V=		1.4.0
DISTNAME=	enchant-${V}
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	enchant	5.0 # .5.0
CATEGORIES=	textproc

HOMEPAGE=	http://www.abisource.com/projects/enchant/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.abisource.com/downloads/enchant/${V}/

WANTLIB=	c m dbus-1 glib-2.0 gmodule-2.0 gobject-2.0 pcre stdc++

LIB_DEPENDS=	aspell.>=16::textproc/aspell/core \
		dbus-glib-1.>=3::x11/dbus-glib

MODULES=	devel/gettext
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lstdc++ -lm"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-aspell \
		--with-aspell-prefix=${LOCALBASE} \
		--enable-ispell \
		--with-ispell-dir=${LOCALBASE}/lib/ispell/ \
		--enable-zemberek \
		--disable-myspell \
		--disable-voikko \
		--disable-uspell \
		--disable-hspell

MAKE_FLAGS=	CXX_WARN_CFLAGS=""

pre-configure:
	@perl -pi -e 's,MKDIRPROG-mkdir,MKDIRPROG-mkdir -p,g' \
		${WRKSRC}/install-sh
	@perl -pi -e 's,\$$\(datadir\),${LOCALBASE}/share,g' \
		${WRKSRC}/doc/enchant.1

.include <bsd.port.mk>
