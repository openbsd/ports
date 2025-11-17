COMMENT=		utilities to manage well known user directories

DISTNAME=		xdg-user-dirs-0.19
EXTRACT_SUFX=		.tar.xz

CATEGORIES=		devel

HOMEPAGE=		http://freedesktop.org/wiki/Software/xdg-user-dirs/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=		Yes

SITES=			http://user-dirs.freedesktop.org/releases/

WANTLIB += c iconv intl

MODULES=		devel/meson

# -std=gnu11
COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

BUILD_DEPENDS=		devel/gettext,-tools

# man pages
BUILD_DEPENDS +=	textproc/docbook-xsl

LIB_DEPENDS=		devel/gettext,-runtime

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xdg-user-dirs
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/xdg-user-dirs

.include <bsd.port.mk>
