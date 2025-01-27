COMMENT =		package compiler and linker metadata toolkit

DISTNAME =		pkgconf-2.3.0
EXTRACT_SUFX =		.tar.xz

SHARED_LIBS +=		pkgconf 1.0	# 5.0

CATEGORIES =		devel

HOMEPAGE =		https://gitea.treehouse.systems/ariadne/pkgconf

MAINTAINER =		Adam Steen <adam@adamsteen.com.au>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c

SITES =			https://distfiles.ariadne.space/pkgconf/

TEST_DEPENDS =		devel/kyua-cli

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-pkg-config-dir=/usr/lib/pkgconfig:${LOCALBASE}/lib/pkgconfig:${LOCALBASE}/share/pkgconfig:${X11BASE}/lib/pkgconfig:${X11BASE}/share/pkgconfig \
			--with-system-libdir=/usr/lib \
			--with-system-includedir=/usr/include

PORTHOME =		${WRKDIR}

post-extract:
	sed -i "s,'},.sh'}," ${WRKSRC}/tests/Kyuafile.in

.include <bsd.port.mk>
