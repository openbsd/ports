# $OpenBSD: Makefile,v 1.105 2016/08/29 09:13:37 jca Exp $

COMMENT =	improved dynamic tiling window manager

DISTNAME =	i3-4.12
REVISION =	0
CATEGORIES =	x11

EXTRACT_SUFX =	.tar.bz2
HOMEPAGE =	http://i3wm.org/
MASTER_SITES =	${HOMEPAGE}/downloads/
MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =   Yes

# uses pledge()
WANTLIB += c cairo ev glib-2.0 gobject-2.0 iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pcre startup-notification-1 xcb xcb-cursor
WANTLIB += xcb-icccm xcb-keysyms xcb-randr xcb-render xcb-util
WANTLIB += xcb-xinerama xcb-xkb xkbcommon xkbcommon-x11 yajl

LIB_DEPENDS =	devel/libev \
		devel/libyajl>=2.0.0 \
		devel/pango \
		devel/pcre \
		devel/startup-notification \
		x11/xkbcommon

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/dmenu \
		x11/i3status \
		x11/p5-AnyEvent-I3

USE_GMAKE =	Yes

NO_TEST =	Yes

MAKE_FLAGS =	CC="${CC}" \
		SYSCONFDIR=${SYSCONFDIR} \
		V=1

.if defined(DEBUG)
MAKE_FLAGS +=	DEBUG=1
.endif

FAKE_FLAGS =	PREFIX=${PREFIX} \
		EXEC_PREFIX=${PREFIX} \
		SYSCONFDIR=${PREFIX}/share/examples \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_SCRIPT="${INSTALL_SCRIPT}"

post-configure:
	${SUBST_CMD} ${WRKSRC}/i3-dmenu-desktop \
		${WRKSRC}/i3-nagbar/main.c \
		${WRKSRC}/i3.config \
		${WRKSRC}/i3.config.keycodes \
		${WRKSRC}/libi3/get_config_path.c \
		${WRKSRC}/libi3/get_exe_path.c

post-install:
	${INSTALL_MAN} ${WRKBUILD}/man/*.1 ${PREFIX}/man/man1/
	${SUBST_MAN} ${WRKBUILD}/man/i3-config-wizard.1 \
			${PREFIX}/man/man1/i3-config-wizard.1
	${SUBST_MAN} ${WRKBUILD}/man/i3-dmenu-desktop.1 \
			${PREFIX}/man/man1/i3-dmenu-desktop.1
	${SUBST_MAN} ${WRKBUILD}/man/i3.1 ${PREFIX}/man/man1/i3.1
	@rm ${PREFIX}/man/man1/i3-sensible*.1

.include <bsd.port.mk>
