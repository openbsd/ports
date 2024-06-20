COMMENT-main=	system to store and display time-series data
COMMENT-update=	lightweight update-only tool for rrdtool
COMMENT-ruby=	ruby interface to librrd

V=		1.8.0
REVISION=	1
REVISION-ruby=	2
DISTNAME=	rrdtool-$V
PKGNAME-main=	${DISTNAME}
PKGNAME-update=	rrdupdate-$V
PKGNAME-ruby=	ruby${MODRUBY_BINREV}-rrd-$V

SHARED_LIBS +=	rrd                  6.0      # 11.0

CATEGORIES=	net databases

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

HOMEPAGE=	https://oss.oetiker.ch/rrdtool/
SITES=		https://github.com/oetiker/rrdtool-1.x/releases/download/v$V/

# GPLv2+, with exemptions for use of the library with certain
# named open-source licenses; see COPYRIGHT
PERMIT_PACKAGE=	 Yes

COMPILER=	base-clang ports-gcc

USE_GMAKE=	Yes

PSEUDO_FLAVORS=	no_ruby
MULTI_PACKAGES= -main -ruby -update
DEBUG_PACKAGES=	${BUILD_PACKAGES}

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

CONFIGURE_ENV+=	CPPFLAGS="${CPPFLAGS}" \
		LDFLAGS="${LDFLAGS}"
# autoconf insists on these, but the docs are pre-formatted in the
# distfile, so they aren't really needed at build time.
CONFIGURE_ENV+=	NROFF="/usr/bin/true" \
		TROFF="/usr/bin/true"

cWANTLIB=	pthread
WANTLIB-update=	${cWANTLIB} c glib-2.0 iconv intl m
WANTLIB-ruby=	${cWANTLIB} ${MODRUBY_WANTLIB} c gmp m rrd
# depends on Perl ABI
WANTLIB-main=	${cWANTLIB} ${COMPILER_LIBCXX} perl
WANTLIB-main += X11 Xext Xrender c cairo expat ffi fontconfig freetype
WANTLIB-main += glib-2.0 gobject-2.0 graphite2
WANTLIB-main += harfbuzz iconv intl lzma m pango-1.0 pangocairo-1.0
WANTLIB-main += pangoft2-1.0 pcre2-8 pixman-1 png xcb
WANTLIB-main += xcb-render xcb-shm xml2 z fribidi
WANTLIB-main += Xau Xdmcp gio-2.0 gmodule-2.0

LIB_DEPENDS-main=	devel/glib2 \
			devel/pango \
			graphics/png \
			textproc/libxml
RUN_DEPENDS-main=	rrdupdate-$V:net/rrdtool,-update

LIB_DEPENDS-update=	devel/glib2
RUN_DEPENDS-update=

LIB_DEPENDS-ruby=	rrdtool-$V:net/rrdtool \
			${MODRUBY_LIB_DEPENDS}
RUN_DEPENDS-ruby=	${MODRUBY_RUN_DEPENDS}

TEST_DEPENDS=		shells/bash \
			sysutils/coreutils

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/librrd.pc.in

pre-test:
	find ${WRKSRC}/tests -type f -perm -0111 \
	    -exec sed -i '1s,#!.*bash,#!${LOCALBASE}/bin/bash,' {} +
	ln -fs ${LOCALBASE}/bin/gseq ${WRKDIR}/bin/seq
	mkdir ${WRKSRC}/tests/cached

post-install:
	cd ${WRKSRC}; ${INSTALL_DATA} CHANGES COPYRIGHT \
	    NEWS ${PREFIX}/share/doc/rrdtool
	rm -r ${PREFIX}/share/doc/rrdtool/txt
	${SUBST_PROGRAM} ${FILESDIR}/rrdtool-chroot.sh \
	    ${PREFIX}/share/examples/rrdtool/rrdtool-chroot
	rm -rf ${PREFIX}/share/doc/rrdtool/html

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mlld} && ${MACHINE_ARCH} != "arm" && ${MACHINE_ARCH} != "powerpc"
CFLAGS+= -flto
.endif

.include <bsd.port.mk>
