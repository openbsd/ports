# $OpenBSD: Makefile,v 1.18 2011/05/09 11:33:35 dcoppa Exp $

COMMENT =	improved dynamic tiling window manager

DISTNAME =	i3-3.e-bf3
PKGNAME =	i3-3.5.3
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

WANTLIB +=	X11 c ev m xcb xcb-atom xcb-aux xcb-event
WANTLIB +=	xcb-icccm xcb-keysyms xcb-randr xcb-xinerama
WANTLIB +=	yajl

MODULES =	converters/libiconv
LIB_DEPENDS =	devel/libev \
		devel/libyajl>=2.0.0
BUILD_DEPENDS =	devel/bison
RUN_DEPENDS =	x11/dmenu \
		devel/p5-IPC-Run \
		devel/p5-Try-Tiny \
		devel/p5-AnyEvent \
		x11/p5-AnyEvent-I3

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
	${SUBST_CMD} ${WRKSRC}/i3.config ${WRKSRC}/src/config.c

post-install:
	${INSTALL_MAN} ${WRKBUILD}/man/*.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
