# $OpenBSD: Makefile,v 1.6 2016/08/27 17:26:15 jca Exp $

COMMENT =		Mac OS-X style lightweight application launcher

DISTNAME =		wbar-2.3.4
EXTRACT_SUFX =		.tgz
REVISION =		3

CATEGORIES=		x11

HOMEPAGE=		https://code.google.com/p/wbar/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += Imlib2 X11 Xext c freetype intl m stdc++ z

MASTER_SITES =		https://wbar.googlecode.com/files/

MODULES =		textproc/intltool

RUN_DEPENDS =		devel/desktop-file-utils

LIB_DEPENDS =		devel/gettext \
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
