# $OpenBSD: Makefile,v 1.120 2022/02/23 15:47:35 sthen Exp $

COMMENT-main=	system to store and display time-series data
COMMENT-update=	lightweight update-only tool for rrdtool
COMMENT-ruby=	ruby interface to librrd

VERSION=	1.7.2
REVISION=	0
REVISION-ruby=	1
DISTNAME=	rrdtool-${VERSION}
PKGNAME-main=	${DISTNAME}
PKGNAME-update=	rrdupdate-${VERSION}
PKGNAME-ruby=	ruby${MODRUBY_BINREV}-rrd-${VERSION}

SHARED_LIBS +=	rrd                  5.3      # 10.0

CATEGORIES=	net databases

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

HOMEPAGE=	http://oss.oetiker.ch/rrdtool/
MASTER_SITES=	http://oss.oetiker.ch/rrdtool/pub/

# GPLv2+, with exemptions for use of the library with certain
# named open-source licenses; see COPYRIGHT
PERMIT_PACKAGE=	 Yes

USE_GMAKE=	Yes

PSEUDO_FLAVORS=	no_ruby
MULTI_PACKAGES= -main -ruby -update

MODULES=	lang/ruby

CONFIGURE_STYLE= gnu
CPPFLAGS+=	-I${X11BASE}/include/ \
		-I${X11BASE}/include/freetype2
LDFLAGS+=	-L${LOCALBASE}/lib -L${X11BASE}/lib

CONFIGURE_ARGS+= --disable-libdbi \
		--disable-lua \
		--disable-python \
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

# needs checking before enabling mmap; is it safe without UBC?
CONFIGURE_ARGS+= --disable-mmap

CONFIGURE_ENV+=	CPPFLAGS="${CPPFLAGS}" \
		LDFLAGS="${LDFLAGS}"
# autoconf insists on these, but the docs are pre-formatted in the distfile,
# so they aren't needed.
CONFIGURE_ENV+=	NROFF="/usr/bin/true" \
		TROFF="/usr/bin/true"

cWANTLIB=	pthread
WANTLIB-update=	${cWANTLIB} c glib-2.0 iconv intl m
WANTLIB-ruby=	${cWANTLIB} ${MODRUBY_WANTLIB} c gmp m rrd
# depends on Perl ABI
WANTLIB-main=	${cWANTLIB} perl
WANTLIB-main += X11 Xext Xrender c cairo expat ffi fontconfig freetype
WANTLIB-main += glib-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB-main += harfbuzz iconv intl lzma m pango-1.0 pangocairo-1.0
WANTLIB-main += pangoft2-1.0 pcre pixman-1 png xcb
WANTLIB-main += xcb-render xcb-shm xml2 z fribidi

LIB_DEPENDS-main=	devel/glib2 \
			devel/pango \
			devel/pcre \
			graphics/png \
			textproc/libxml
RUN_DEPENDS-main=	rrdupdate-${VERSION}:net/rrdtool,-update

LIB_DEPENDS-update=	devel/glib2
RUN_DEPENDS-update=

LIB_DEPENDS-ruby=	rrdtool-${VERSION}:net/rrdtool \
			${MODRUBY_LIB_DEPENDS}
RUN_DEPENDS-ruby=	${MODRUBY_RUN_DEPENDS}

TEST_DEPENDS=		shells/bash

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/librrd.pc.in

pre-test:
	find ${WRKSRC}/tests -type f -perm -0111 \
	    -exec sed -i '1s,#!.*bash,#!${LOCALBASE}/bin/bash,' {} +

post-install:
	cd ${WRKSRC}; ${INSTALL_DATA} CHANGES COPYRIGHT \
	    NEWS ${PREFIX}/share/doc/rrdtool
	rm -r ${PREFIX}/share/doc/rrdtool/txt
	${SUBST_PROGRAM} ${FILESDIR}/rrdtool-chroot.sh \
	    ${PREFIX}/share/examples/rrdtool/rrdtool-chroot
	rm -rf ${PREFIX}/share/doc/rrdtool/html

.include <bsd.port.mk>
