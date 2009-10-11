# $OpenBSD: Makefile,v 1.10 2009/10/11 23:47:12 ajacoutot Exp $

COMMENT=	generic spell checking library/wrapper

V=		1.5.0
DISTNAME=	enchant-${V}
SHARED_LIBS=	enchant	6.0 # .5.2
CATEGORIES=	textproc

HOMEPAGE=	http://www.abisource.com/projects/enchant/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.abisource.com/downloads/enchant/${V}/

WANTLIB=	c m pcre stdc++

LIB_DEPENDS=	aspell.>=16::textproc/aspell/core \
		glib-2.0,gmodule-2.0::devel/glib2

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::x11/dbus-glib

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
		--disable-zemberek \
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
