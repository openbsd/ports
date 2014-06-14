# $OpenBSD: Makefile,v 1.87 2014/06/14 10:34:45 sthen Exp $

COMMENT = 		K Desktop Environment bindings for scripting languages
CATEGORIES =		x11 x11/kde devel
VERSION =		3.5.10
DISTNAME =		kdebindings-${VERSION}
MODKDE_VERSION =	3.5.8
REVISION =		25

SHARED_LIBS +=	kjsembed             2.0      # .1.0
SHARED_LIBS +=	smokeqt              4.0      # .3.2
SHARED_LIBS +=	smokekde             4.0      # .3.2

MODULES =	x11/kde devel/gettext lang/python lang/ruby perl
MODRUBY_REV =	1.8

BUILD_DEPENDS =	x11/kde/base3

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic \
		x11/kde/base3

LIB_DEPENDS =	x11/kde/libs3 \
		x11/qt3 \
		${MODRUBY_LIB_DEPENDS}

#XXX missing -rpath to /usr/local ?
USE_LIBTOOL =	gnu
USE_GROFF =	Yes
WANTLIB = GL GLU ICE SM X11 Xext Xrender Xfixes Xt art_lgpl_2 c expat fam \
	fontconfig freetype idn jpeg lib/kde3/DCOP lib/kde3/kdecore>=6 \
	lib/kde3/kdefx lib/kde3/kdeprint lib/kde3/kdesu lib/kde3/kdeui \
	lib/kde3/khtml lib/kde3/kio lib/kde3/kjs lib/kde3/kmdi \
	lib/kde3/knewstuff lib/kde3/kparts lib/kde3/kscript lib/kde3/kspell \
	lib/kde3/kutils lib/kde3/kwalletclient m pcre pcreposix png pthread \
	pthread-stubs qui-mt stdc++ util xcb z ${MODRUBY_WANTLIB}
WANTLIB += Xmu kabc kabc_file kresources qui

CONFIGURE_ENV =		DO_NOT_COMPILE=qtsharp

MAKE_FLAGS =		PYTHON=${MODPY_BIN} \
			QTDIR=${MODQT_LIBDIR} \
			QMAKESPEC=openbsd-g++

CONFIGURE_ARGS =	--without-java \
			--with-kde_includes=${LOCALBASE}/include/kde \
			--with-kde_libraries=${LOCALBASE}/lib/kde3

GNU_ARCH =		${MACHINE_ARCH:S/amd64/x86_64/}
SUBST_VARS =		GNU_ARCH

post-patch:
	@cd ${WRKSRC}/python && find pykde -name '*.sip' | \
	    xargs -rt perl -pi.ssizefix -e 's@int (pos|len)@Py_ssize_t $$1@'

.include <bsd.port.mk>
