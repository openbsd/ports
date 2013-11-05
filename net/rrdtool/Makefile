# $OpenBSD: Makefile,v 1.73 2013/11/05 17:56:30 sthen Exp $

SHARED_ONLY=	Yes

COMMENT-main=	system to store and display time-series data
COMMENT-update=	lightweight update-only tool for rrdtool
COMMENT-python= python interface to librrd
COMMENT-ruby=	ruby interface to librrd

MODPY_EGG_VERSION= 0.2.2
VERSION=	1.4.8
REVISION-main=	0
DISTNAME=	rrdtool-${VERSION}
PKGNAME-main=	${DISTNAME}
PKGNAME-update=	rrdupdate-${VERSION}
PKGNAME-python= py-rrd-${VERSION}
PKGNAME-ruby=	ruby-rrd-${VERSION}

SHARED_LIBS +=	rrd                  4.0      # 6.1
SHARED_LIBS +=	rrd_th               4.0      # 6.1

CATEGORIES=	net databases

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	http://oss.oetiker.ch/rrdtool/
MASTER_SITES=	http://oss.oetiker.ch/rrdtool/pub/

# GPLv2+, with exceptions for use of the library with certain
# named open-source licenses; see COPYRIGHT
PERMIT_PACKAGE_CDROM=	 Yes

USE_GMAKE=	Yes

MULTI_PACKAGES= -main -python -ruby -update

MODULES=	lang/python lang/ruby

CONFIGURE_STYLE= gnu
CPPFLAGS+=	-I${X11BASE}/include/ \
		-I${X11BASE}/include/freetype2
LDFLAGS+=	-L${LOCALBASE}/lib -L${X11BASE}/lib

CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		--disable-libdbi \
		--disable-lua \
		--disable-tcl \
		--enable-perl-site-install \
		--enable-python \
		--enable-ruby-site-install
# needs checking before enabling mmap; is it safe without UBC?
CONFIGURE_ARGS+= --disable-mmap

CONFIGURE_ENV+=	CPPFLAGS="${CPPFLAGS}" \
		LDFLAGS="${LDFLAGS}" \
		RUBY="${RUBY}"
# autoconf insists on these, but the docs are pre-formatted in the distfile,
# so they aren't needed.
CONFIGURE_ENV+=	NROFF="/usr/bin/true" \
		TROFF="/usr/bin/true"

WANTLIB=	pthread
WANTLIB-update=	${WANTLIB} c m
WANTLIB-python=	${WANTLIB} ${MODPY_WANTLIB} rrd
WANTLIB-ruby=	${WANTLIB} ${MODRUBY_WANTLIB} c m rrd
# depends on Perl ABI
WANTLIB-main=	${WANTLIB} perl
WANTLIB-main += X11 Xext Xrender c cairo expat ffi fontconfig freetype
WANTLIB-main += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB-main += harfbuzz iconv intl m pango-1.0 pangocairo-1.0
WANTLIB-main += pangoft2-1.0 pcre pixman-1 png pthread-stubs xcb
WANTLIB-main += xcb-render xcb-shm xml2 z

LIB_DEPENDS-main=	graphics/png \
			devel/pango \
			textproc/libxml
RUN_DEPENDS-main=	rrdupdate-${VERSION}:net/rrdtool,-update

RUN_DEPENDS-update=

LIB_DEPENDS-python=	rrdtool-${VERSION}:net/rrdtool
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS}

LIB_DEPENDS-ruby=	rrdtool-${VERSION}:net/rrdtool \
			${MODRUBY_LIB_DEPENDS}

post-install:
	cd ${WRKSRC}; ${INSTALL_DATA} CHANGES CONTRIBUTORS COPYRIGHT \
	    NEWS README ${PREFIX}/share/doc/rrdtool
	rm -r ${PREFIX}/share/doc/rrdtool/txt
	${SUBST_CMD} -c -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} \
	    ${FILESDIR}/rrdtool-chroot.sh \
	    ${PREFIX}/share/examples/rrdtool/rrdtool-chroot
	rm -rf ${PREFIX}/share/doc/rrdtool/html

.include <bsd.port.mk>
