# $OpenBSD: Makefile,v 1.26 2017/04/24 09:36:40 sthen Exp $

COMMENT=	generic spell checking library/wrapper

V=		1.6.0
DISTNAME=	enchant-${V}
REVISION=	3
SHARED_LIBS=	enchant	6.1 # .7.0
CATEGORIES=	textproc

HOMEPAGE=	http://www.abisource.com/projects/enchant/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://www.abisource.com/downloads/enchant/${V}/

WANTLIB=	c m pcre ${LIBCXX} aspell>=16 glib-2.0 gmodule-2.0 pthread

LIB_DEPENDS=	textproc/aspell/core \
		devel/glib2

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	x11/dbus-glib

MODULES=	devel/gettext
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"

# XXX linking gnome/todo and gnome/calendar breaks without this,
#     at least on gcc/ld.bfd arches
CONFIGURE_ENV+= LDFLAGS="-L${LOCALBASE}/lib ${LIBCXX:C/^/-l/} -lm"

CONFIGURE_ARGS=	--enable-aspell \
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
	@sed -i 's,MKDIRPROG-mkdir,MKDIRPROG-mkdir -p,g' \
		${WRKSRC}/install-sh
	@perl -pi -e 's,\$$\(datadir\),${LOCALBASE}/share,g' \
		${WRKSRC}/doc/enchant.1

.include <bsd.port.mk>
