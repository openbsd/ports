# $OpenBSD: Makefile,v 1.15 2019/07/12 20:51:23 sthen Exp $

COMMENT =		Mac OS-X style lightweight application launcher

DISTNAME =		wbar-2.3.4
EXTRACT_SUFX =		.tgz
REVISION =		8

CATEGORIES=		x11

HOMEPAGE=		https://code.google.com/p/wbar/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += Imlib2 X11 Xext c freetype intl m ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=wbar/}

MODULES =		textproc/intltool

RUN_DEPENDS =		devel/desktop-file-utils

LIB_DEPENDS =		devel/gettext,-runtime \
			graphics/imlib2

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# XXX /proc/.../cmdline
CONFIGURE_ARGS +=	--disable-wbar-config

MAKE_FLAGS =		bashcompletiondir=${PREFIX}/share/bash-completion/completions \
			autostartdir=${PREFIX}/share/applications

FAKE_FLAGS =		defaultdir=${PREFIX}/share/examples/wbar/wbar.d

.include <bsd.port.mk>
