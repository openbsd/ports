# $OpenBSD: Makefile,v 1.23 2012/01/11 13:33:48 dcoppa Exp $

COMMENT =	improved dynamic tiling window manager

DISTNAME =	i3-4.1.1
REVISION =	0
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

WANTLIB +=	X11 Xcursor c ev m xcb xcb-atom xcb-aux
WANTLIB +=	xcb-event xcb-icccm xcb-keysyms
WANTLIB +=	xcb-property xcb-randr xcb-xinerama yajl
WANTLIB +=	pcre startup-notification-1

MODULES =	converters/libiconv
LIB_DEPENDS =	devel/libev \
		devel/libyajl>=2.0.0 \
		devel/pcre \
		devel/startup-notification
BUILD_DEPENDS =	devel/bison \
		devel/flex
RUN_DEPENDS =	x11/dmenu

USE_GMAKE =	Yes

NO_REGRESS =	Yes

.if defined(DEBUG)
MAKE_FLAGS +=	DEBUG=1
.endif

FAKE_FLAGS =	PREFIX=${PREFIX} \
		SYSCONFDIR=${PREFIX}/share/examples \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_SCRIPT="${INSTALL_SCRIPT}"

pre-configure:
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
	@rm -f ${PREFIX}/man/man1/i3-wsbar.1 \
		${PREFIX}/man/man1/i3-sensible*.1

.include <bsd.port.mk>
