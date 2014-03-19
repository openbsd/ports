# $OpenBSD: Makefile,v 1.82 2014/03/19 07:31:53 ajacoutot Exp $

COMMENT =	improved dynamic tiling window manager

DISTNAME =	i3-4.7.2
REVISION =	3
CATEGORIES =	x11

EXTRACT_SUFX =	.tar.bz2
HOMEPAGE =	http://i3wm.org/
MASTER_SITES =	${HOMEPAGE}/downloads/
MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =   Yes

WANTLIB =	X11 Xcursor c>=68.3 cairo ev fontconfig freetype \
		glib-2.0 gobject-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pthread startup-notification-1 \
		xcb xcb-atom xcb-aux xcb-event xcb-icccm \
		xcb-keysyms xcb-property xcb-randr xcb-xinerama \
		yajl z

MODULES =	devel/gettext

LIB_DEPENDS =	devel/libev \
		devel/libyajl>=2.0.0 \
		devel/pango \
		devel/pcre \
		devel/startup-notification

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/dmenu \
		x11/i3status

USE_GMAKE =	Yes

NO_TEST =	Yes

MAKE_FLAGS =	CC="${CC}" \
		SYSCONFDIR=${SYSCONFDIR} \
		V=1

.if defined(DEBUG)
MAKE_FLAGS +=	DEBUG=1
.endif

FAKE_FLAGS =	PREFIX=${PREFIX} \
		SYSCONFDIR=${PREFIX}/share/examples \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_SCRIPT="${INSTALL_SCRIPT}"

post-configure:
	${SUBST_CMD} ${WRKSRC}/i3-dmenu-desktop \
		${WRKSRC}/i3-nagbar/main.c \
		${WRKSRC}/i3.config \
		${WRKSRC}/i3.config.keycodes \
		${WRKSRC}/libi3/get_exe_path.c \
		${WRKSRC}/src/commands.c \
		${WRKSRC}/src/config.c

post-install:
	${INSTALL_MAN} ${WRKBUILD}/man/*.1 ${PREFIX}/man/man1/
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -m ${MANMODE} \
		-c ${WRKBUILD}/man/i3-config-wizard.1 \
			${PREFIX}/man/man1/i3-config-wizard.1
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -m ${MANMODE} \
		-c ${WRKBUILD}/man/i3-dmenu-desktop.1 \
			${PREFIX}/man/man1/i3-dmenu-desktop.1
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -m ${MANMODE} \
		-c ${WRKBUILD}/man/i3.1 ${PREFIX}/man/man1/i3.1
	@rm ${PREFIX}/man/man1/i3-sensible*.1

.include <bsd.port.mk>
