# $OpenBSD: Makefile,v 1.7 2010/10/24 21:15:32 ajacoutot Exp $

COMMENT =	improved dynamic tiling window manager

DISTNAME =	i3-3.e-bf1
PKGNAME =	i3-3.5.1

CATEGORIES =	x11

EXTRACT_SUFX =	.tar.bz2
HOMEPAGE = 	http://i3.zekjur.net/
MASTER_SITES =	${HOMEPAGE}downloads/
MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

WANTLIB +=	X11 c ev m xcb xcb-atom xcb-aux xcb-event
WANTLIB +=	xcb-icccm xcb-keysyms xcb-property xcb-randr
WANTLIB +=	xcb-xinerama yajl

MODULES =	converters/libiconv
LIB_DEPENDS =	::devel/libev \
		::devel/libyajl
BUILD_DEPENDS =	::devel/bison
RUN_DEPENDS =	::x11/dmenu \
		::devel/p5-IPC-Run \
		::devel/p5-Try-Tiny \
		::devel/p5-AnyEvent \
		::x11/p5-AnyEvent-I3

USE_GMAKE =	Yes
USE_GROFF =	Yes

NO_REGRESS =	Yes

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
