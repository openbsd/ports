# $OpenBSD: Makefile,v 1.16 2019/10/03 10:29:32 kn Exp $

COMMENT =	simple X Image Viewer

GH_PROJECT =	sxiv
GH_ACCOUNT =	muennich
GH_TAGNAME =	v25

CATEGORIES =	graphics x11

MAINTAINER =	Klemens Nanni <kn@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =		Yes

WANTLIB +=	Imlib2 X11 Xft c exif fontconfig gif lib/inotify/inotify

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/libinotify \
		graphics/imlib2 \
		graphics/libexif

MAKE_FLAGS =	CC="${CC}" \
		V=1 \
		PREFIX=${PREFIX} \
		MANPREFIX=${PREFIX}/man \
		CFLAGS="${CFLAGS} -I${X11BASE}/include -I${X11BASE}/include/freetype2 -I${LOCALBASE}/include -I${LOCALBASE}/include/inotify" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -L${LOCALBASE}/lib/inotify -linotify -Wl,-rpath ${LOCALBASE}/lib/inotify"

NO_TEST =	Yes

# Git errors break version.h build; this makes it fall back to a hardcoded value
pre-build:
	ln -sf /usr/bin/true ${WRKDIR}/bin/git

post-install:
	${MAKE_PROGRAM} -C ${WRKSRC}/icon/ DESTDIR='' ${FAKE_TARGET}
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/sxiv.desktop ${PREFIX}/share/applications

.include <bsd.port.mk>
