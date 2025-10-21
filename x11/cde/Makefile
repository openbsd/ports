COMMENT=		Common Desktop Environment

DISTNAME=		cde-2.5.2.0.20250613
REVISION=		9

CATEGORIES=		x11

HOMEPAGE=		https://sourceforge.net/p/cdesktopenv/wiki/Home/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

SHARED_LIBS +=  DtXinerama           0.0      # .2.1
SHARED_LIBS +=  tt                   0.0      # .2.1
SHARED_LIBS +=  DtSvc                0.0      # .2.1
SHARED_LIBS +=  DtSearch             0.0      # .2.1
SHARED_LIBS +=  DtWidget             0.0      # .2.1
SHARED_LIBS +=  DtHelp               0.0      # .2.1
SHARED_LIBS +=  DtPrint              0.0      # .2.1
SHARED_LIBS +=  DtTerm               0.0      # .2.1
SHARED_LIBS +=  DtMrm                0.0      # .2.1
SHARED_LIBS +=  csa                  0.0      # .2.1
SHARED_LIBS +=  DtMmdb               0.0      # .2.1

# LGPLv2.1
PERMIT_PACKAGE=		Yes

#SITES=			${SITE_SOURCEFORGE:=cdesktopenv/}
SITES=			https://distfiles.bsdfrog.org/

WANTLIB += ${COMPILER_LIBCXX} ICE Mrm SM Uil X11 Xau Xdmcp Xext
WANTLIB += Xft Xinerama Xm Xmu Xpm Xrender Xss Xt c expat fontconfig
WANTLIB += freetype iconv jpeg lmdb m png tcl86 util xcb z

MODULES=		lang/tcl

MODTCL_VERSION=		8.6

USE_GMAKE=		Yes
# some tbl(7) constructs that result in a mangled display with mandoc(1);
# e.g., dtsdldtd(4)
USE_GROFF=		Yes

# XXX error: `programs/dtdocbook/doc_utils/.libs/NodeParser' does not exist.
USE_LIBTOOL=		gnu

BUILD_DEPENDS=		textproc/opensp

LIB_DEPENDS=		${MODTCL_LIB_DEPENDS} \
			databases/lmdb \
			x11/motif

PREFIX=			${LOCALBASE}/dt

CONFIGURE_STYLE=	autoreconf

AUTORECONF=		./autogen.sh
AUTOCONF_VERSION=	2.72
AUTOMAKE_VERSION=	1.18

CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib"

# Our ksh(1) might be enough but considering the KSH found at configure time is
# propagated to most installed scripts, let's not take any chances.
BUILD_DEPENDS +=	shells/ksh93
RUN_DEPENDS +=		shells/ksh93
CONFIGURE_ENV +=	ac_cv_path_KSH=${LOCALBASE}/bin/ksh93

CONFIGURE_ARGS=		--with-tcl=${MODTCL_LIBDIR} \
			--with-utmp-file=/var/run/utmp \
			--with-wtmp-file=/var/log/wtmp \
			--enable-german \
			--enable-italian \
			--enable-french \
			--enable-spanish

DEBUG_PACKAGES=		${BUILD_PACKAGES}

FAKE_FLAGS=		TERMINFO="${DESTDIR}${TRUEPREFIX}/share/terminfo"

# not pre-configure to prevent running configure twice (configure.ac timestamp change)
post-patch:
	for p in `find ${WRKSRC} -type f | xargs grep -l '/usr/bin/X11'`; do \
		sed -i "s,/usr/bin/X11,${X11BASE}/bin,g" $${p} ;\
	done
	for p in `find ${WRKSRC} -type f | xargs grep -l '/usr/dt'`; do \
		sed -i "s,/usr/dt,${PREFIX},g" $${p} ;\
	done
	${SUBST_CMD} ${WRKSRC}/configure.ac

pre-configure:
	${SUBST_CMD} ${WRKSRC}/programs/dtdocbook/tcl/docbook.tcl \
		${WRKSRC}/programs/dtlogin/Makefile.am

pre-install:
	mkdir -p ${PREFIX}/share/terminfo

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc/cde,examples}/
	mv ${WRKINST}/etc/cde ${PREFIX}/share/examples/
.for d in CONTRIBUTORS COPYING HISTORY README.md
	mv ${PREFIX}/${d} ${PREFIX}/share/doc/cde/
.endfor
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/examples/cde/dt/config/C/Xresources.d
	${INSTALL_DATA} ${FILESDIR}/9999.session \
		${PREFIX}/share/examples/cde/dt/config/C/Xresources.d/

# cde will create this
	rm -rf ${WRKINST}/var/spool/calendar

.include <bsd.port.mk>
