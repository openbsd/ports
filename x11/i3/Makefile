# $OpenBSD: Makefile,v 1.42 2012/08/08 14:33:25 dcoppa Exp $

COMMENT =	improved dynamic tiling window manager

DISTNAME =	i3-4.2
REVISION =	9
CATEGORIES =	x11

EXTRACT_SUFX =	.tar.bz2
HOMEPAGE =	http://i3wm.org/
MASTER_SITES =	${HOMEPAGE}/downloads/
MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

WANTLIB =	X11 X11-xcb Xau Xcursor Xdmcp Xfixes \
		Xrender c ev m pcre pthread-stubs \
		startup-notification-1 xcb xcb-atom \
		xcb-aux xcb-event xcb-icccm \
		xcb-keysyms xcb-property xcb-randr \
		xcb-xinerama yajl

MODULES =	converters/libiconv

LIB_DEPENDS =	devel/libev \
		devel/libyajl>=2.0.0 \
		devel/pcre \
		devel/startup-notification

BUILD_DEPENDS =	devel/bison \
		devel/flex

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/dmenu \
		x11/i3status

USE_GMAKE =	Yes

NO_REGRESS =	Yes

MAKE_FLAGS =	CC="${CC}" \
		BISON="${LOCALBASE}/bin/bison" \
		FLEX="${LOCALBASE}/bin/gflex"

.if defined(DEBUG)
MAKE_FLAGS +=	DEBUG=1
.endif

FAKE_FLAGS =	PREFIX=${PREFIX} \
		SYSCONFDIR=${PREFIX}/share/examples \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_SCRIPT="${INSTALL_SCRIPT}"

post-configure:
	${SUBST_CMD} ${WRKSRC}/i3.config \
		${WRKSRC}/i3.config.keycodes \
		${WRKSRC}/src/cfgparse.y \
		${WRKSRC}/src/config.c

post-install:
	${INSTALL_MAN} ${WRKBUILD}/{i3bar/doc,man}/*.1 \
		${PREFIX}/man/man1/
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} \
		-c ${WRKBUILD}/man/i3-config-wizard.1 \
			${PREFIX}/man/man1/i3-config-wizard.1
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} \
		-c ${WRKBUILD}/man/i3.1 \
			${PREFIX}/man/man1/i3.1
	@rm ${PREFIX}/man/man1/i3-dump-log.1 \
		${PREFIX}/man/man1/i3-sensible*.1 \
			${PREFIX}/man/man1/i3-wsbar.1

.include <bsd.port.mk>
