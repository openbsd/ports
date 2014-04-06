# $OpenBSD: Makefile,v 1.79 2014/04/06 17:01:34 sthen Exp $

SHARED_ONLY=	Yes

COMMENT-main=	system to store and display time-series data
COMMENT-update=	lightweight update-only tool for rrdtool
COMMENT-python= python interface to librrd
COMMENT-ruby=	ruby interface to librrd

MODPY_EGG_VERSION= 0.2.2
VERSION=	1.4.8
REVISION-main=	3
REVISION-ruby=	3
REVISION-python=0
REVISION-update=0
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

PSEUDO_FLAVORS=	no_ruby no_python
MULTI_PACKAGES= -main -python -ruby -update

MODULES=	devel/gettext lang/python lang/ruby

CONFIGURE_STYLE= gnu
CPPFLAGS+=	-I${X11BASE}/include/ \
		-I${X11BASE}/include/freetype2
LDFLAGS+=	-L${LOCALBASE}/lib -L${X11BASE}/lib

CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		--disable-libdbi \
		--disable-lua \
		--disable-tcl \
		--enable-perl-site-install

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-ruby}
CONFIGURE_ARGS+= --enable-ruby-site-install
CONFIGURE_ENV+=	RUBY="${RUBY}"
.else
CONFIGURE_ARGS+= --disable-ruby
MODRUBY_BUILDDEP= No
MODRUBY_RUNDEP=   No
.endif

.if ${BUILD_PACKAGES:M-python}
CONFIGURE_ARGS+= --enable-python
.else
CONFIGURE_ARGS+= --disable-python
MODPY_BUILDDEP= No
MODPY_RUNDEP=   No
.endif

# needs checking before enabling mmap; is it safe without UBC?
CONFIGURE_ARGS+= --disable-mmap

CONFIGURE_ENV+=	CPPFLAGS="${CPPFLAGS}" \
		LDFLAGS="${LDFLAGS}"
# autoconf insists on these, but the docs are pre-formatted in the distfile,
# so they aren't needed.
CONFIGURE_ENV+=	NROFF="/usr/bin/true" \
		TROFF="/usr/bin/true"

cWANTLIB=	pthread
WANTLIB-update=	${cWANTLIB} c m
WANTLIB-python=	${cWANTLIB} ${MODPY_WANTLIB} rrd
WANTLIB-ruby=	${cWANTLIB} ${MODRUBY_WANTLIB} c m rrd
# depends on Perl ABI
WANTLIB-main=	${cWANTLIB} ${MODGETTEXT_WANTLIB} perl
WANTLIB-main += X11 Xext Xrender c cairo expat ffi fontconfig freetype
WANTLIB-main += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB-main += harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB-main += pangoft2-1.0 pcre pixman-1 png pthread-stubs xcb
WANTLIB-main += xcb-render xcb-shm xml2 z

LIB_DEPENDS-main=	graphics/png \
			devel/pango \
			textproc/libxml
RUN_DEPENDS-main=	rrdupdate-${VERSION}:net/rrdtool,-update

LIB_DEPENDS-update=
RUN_DEPENDS-update=

LIB_DEPENDS-python=	rrdtool-${VERSION}:net/rrdtool
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS}

LIB_DEPENDS-ruby=	rrdtool-${VERSION}:net/rrdtool \
			${MODRUBY_LIB_DEPENDS}
RUN_DEPENDS-ruby=	${MODRUBY_RUN_DEPENDS}

post-install:
	cd ${WRKSRC}; ${INSTALL_DATA} CHANGES CONTRIBUTORS COPYRIGHT \
	    NEWS README ${PREFIX}/share/doc/rrdtool
	rm -r ${PREFIX}/share/doc/rrdtool/txt
	${SUBST_CMD} -c -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} \
	    ${FILESDIR}/rrdtool-chroot.sh \
	    ${PREFIX}/share/examples/rrdtool/rrdtool-chroot
	rm -rf ${PREFIX}/share/doc/rrdtool/html

.include <bsd.port.mk>
