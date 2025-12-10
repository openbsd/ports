COMMENT-main=	radio/rotator control library
COMMENT-python=	Python bindings for hamlib
COMMENT-tcl=	Tcl bindings for hamlib

VERSION=	4.6.5

DISTNAME=	hamlib-${VERSION}
CATEGORIES=	comms hamradio

MULTI_PACKAGES=	-main -python -tcl

SHARED_LIBS +=	hamlib               5.0      # 4.6
SHARED_LIBS +=	hamlib++             4.0      # 4.6

HOMEPAGE=	https://hamlib.github.io/

MODULES=	lang/python \
		lang/tcl

MODTCL_VERSION=	8.6

# GPLv2/LGPLv2.1
PERMIT_PACKAGE=	Yes

COMPILER=		base-clang ports-gcc base-gcc

LIBTOOL_FLAGS=		--tag=disable-static

cWANTLIB=		m pthread usb-1.0
WANTLIB-main=		${cWANTLIB} ${COMPILER_LIBCXX} \
			c curses iconv perl readline xml2 z
WANTLIB-python=		${cWANTLIB} hamlib iconv intl util ${MODPY_WANTLIB}
WANTLIB-tcl=		${cWANTLIB} hamlib ${MODTCL_WANTLIB} z

LIB_DEPENDS-main=	textproc/libxml \
			devel/libusb1 \
			${MODGCC4_CPPLIBDEP}
LIB_DEPENDS-python=	${BUILD_PKGPATH} \
			${MODPY_LIB_DEPENDS}
LIB_DEPENDS-tcl=	${BUILD_PKGPATH} \
			${MODTCL_LIB_DEPENDS}

BUILD_DEPENDS=		devel/swig

RUN_DEPENDS-main=
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS}
RUN_DEPENDS-tcl=	${MODTCL_RUN_DEPENDS}

SITES=			https://github.com/Hamlib/Hamlib/releases/download/${VERSION}/

MAKE_FLAGS=		tcldir=${MODTCL_TCLDIR}/hamlib
FAKE_FLAGS=		exampledir=${PREFIX}/share/examples/hamlib

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--with-perl-binding \
			--with-python-binding \
			--with-tcl-binding \
			--with-tcl=${MODTCL_LIBDIR} \
			--with-xml-support \
			--without-indi \
			--disable-html-matrix

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# The -rpaths in the Tcl and Python libs point to their install dirs.
# These libs won't load from the build dir without help.
TEST_ENV=		LD_LIBRARY_PATH=./.libs

pre-configure:
	@${MODTCL_TCLSH_ADJ} ${WRKSRC}/bindings/tcltest.tcl.in

pre-test:
	ln -sf ${MODTCL_BIN} ${WRKDIR}/bin/tclsh

post-install:
	rm -f ${PREFIX}/libdata/perl5/site_perl/*-openbsd/perltest.pl \
		${PREFIX}/libdata/perl5/*-openbsd/perllocal.pod
	rmdir ${PREFIX}/libdata/perl5/*-openbsd
	rm -f ${PREFIX}/lib/tcl/hamlib/hamlibtcl.{la,so}
	chmod 0755 ${PREFIX}/share/examples/hamlib/{perltest.pl,py3test.py,tcltest.tcl}

.include <bsd.port.mk>
