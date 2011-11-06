# $OpenBSD: Makefile,v 1.19 2011/11/06 20:23:24 dcoppa Exp $

COMMENT =	improved dynamic tiling window manager

DISTNAME =	i3-4.0.2

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

MODULES =	converters/libiconv
LIB_DEPENDS =	devel/libev \
		devel/libyajl>=2.0.0
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
			${WRKSRC}/src/config.c

post-install:
	@rm -f ${WRKBUILD}/man/i3-wsbar.1
	${INSTALL_MAN} ${WRKBUILD}/{i3bar/doc,man}/*.1 \
		${PREFIX}/man/man1/

.include <bsd.port.mk>
