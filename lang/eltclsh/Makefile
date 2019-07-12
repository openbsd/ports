# $OpenBSD: Makefile,v 1.33 2019/07/12 21:15:35 sthen Exp $

COMMENT =	Libedit interface to Tcl/Tk interpreters

DISTNAME =	eltclsh-1.17
CATEGORIES =	lang x11

MASTER_SITES =	https://www.openrobots.org/distfiles/eltclsh/

HOMEPAGE =	https://git.openrobots.org/projects/eltclsh/

MAINTAINER =	Matthieu Herrb <matthieu@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		X11 Xext Xft Xrender Xss c curses edit expat \
			fontconfig freetype m pthread xcb z ${MODTK_WANTLIB}

MODULES =		x11/tk
MODTK_VERSION =		8.6

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--with-tcl=${MODTCL_LIBDIR} \
			--with-tk=${MODTK_LIBDIR} \
			--libdir=\$${prefix}/lib/tcl \
			--datadir=\$${prefix}/lib/tcl

USE_GMAKE =		Yes
FAKE_FLAGS =		ELTCL_LIBRARY=${WRKINST}${MODTCL_TCLDIR}/eltcl

NO_TEST =		Yes

LIB_DEPENDS +=		${MODTK_LIB_DEPENDS}

CFLAGS +=		-pthread
LDFLAGS +=		-lpthread

post-install:
	rm ${WRKINST}${MODTCL_TCLDIR}/libeltclsh.la
	rm ${WRKINST}${MODTCL_TCLDIR}/libeltclsh.a
	rm ${WRKINST}${MODTCL_TCLDIR}/pkgconfig/eltclsh.pc
	rmdir ${WRKINST}${MODTCL_TCLDIR}/pkgconfig

.include <bsd.port.mk>
