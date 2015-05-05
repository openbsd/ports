# $OpenBSD: Makefile,v 1.28 2015/05/05 17:00:18 sthen Exp $

COMMENT =	Libedit interface to Tcl/Tk interpreters

DISTNAME =	eltclsh-1.12
CATEGORIES =	lang x11
REVISION =	0

MASTER_SITES =	http://www.openrobots.org/distfiles/eltclsh/

HOMEPAGE =	http://www.openrobots.org/wiki/eltclsh

MAINTAINER =	Matthieu Herrb <matthieu@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	 Yes

WANTLIB += ${MODTK_WANTLIB}
WANTLIB += X11 Xext Xft Xrender Xss c edit expat fontconfig freetype m
WANTLIB += pthread-stubs termcap xcb z

MODULES +=	x11/tk

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

post-install:
	rm ${WRKINST}${MODTCL_TCLDIR}/eltcl/libeltclsh.la
	rm ${WRKINST}${MODTCL_TCLDIR}/eltcl/libeltclsh.a
	rm ${WRKINST}${MODTCL_TCLDIR}/pkgconfig/eltclsh.pc
	rmdir ${WRKINST}${MODTCL_TCLDIR}/pkgconfig

.include <bsd.port.mk>
