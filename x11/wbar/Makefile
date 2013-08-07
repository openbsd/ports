# $OpenBSD: Makefile,v 1.4 2013/08/07 21:33:08 naddy Exp $

COMMENT =		Mac OS-X style lightweight application launcher

DISTNAME =		wbar-2.3.4
EXTRACT_SUFX =		.tgz
REVISION =		2

CATEGORIES=		x11

HOMEPAGE=		https://code.google.com/p/wbar/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += Imlib2 X11 Xext c freetype m stdc++ z

MASTER_SITES =		https://wbar.googlecode.com/files/

MODULES =		devel/gettext \
			textproc/intltool

BUILD_DEPENDS =		textproc/gsed
RUN_DEPENDS =		devel/desktop-file-utils

LIB_DEPENDS =		graphics/imlib2

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# XXX /proc/.../cmdline
CONFIGURE_ARGS +=	--disable-wbar-config

MAKE_FLAGS =		bashcompletiondir=${PREFIX}/share/bash-completion/completions \
			autostartdir=${PREFIX}/share/applications

FAKE_FLAGS =		defaultdir=${PREFIX}/share/examples/wbar/wbar.d

pre-configure:
	perl -pi -e 's,sed -i,gsed -i,g' ${WRKSRC}/configure

.include <bsd.port.mk>
