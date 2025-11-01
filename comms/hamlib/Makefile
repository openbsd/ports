COMMENT-main=	radio/rotator control library
COMMENT-python=	Python bindings for hamlib
COMMENT-tcl=	Tcl bindings for hamlib

VERSION=	4.6.4
REVISION=	1
REVISION-main=	2
DISTNAME=	hamlib-${VERSION}
CATEGORIES=	comms hamradio

MULTI_PACKAGES=	-main -python -tcl

SHARED_LIBS +=	hamlib               5.0      # 4.6
SHARED_LIBS +=	hamlib++             4.0      # 4.6

HOMEPAGE=	https://hamlib.github.io/

MODULES=	lang/python \
		lang/tcl

# GPLv2/LGPLv2.1
PERMIT_PACKAGE=	Yes

COMPILER=		base-clang ports-gcc base-gcc

LIBTOOL_FLAGS=		--tag=disable-static

cWANTLIB=		m pthread usb-1.0
WANTLIB-main=		${cWANTLIB} ${COMPILER_LIBCXX} \
			c curses iconv perl readline xml2 z
WANTLIB-python=		${cWANTLIB} hamlib iconv intl util ${MODPY_WANTLIB}
WANTLIB-tcl=		${cWANTLIB} hamlib ${MODTCL_WANTLIB}

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

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--with-cxx-binding \
			--with-perl-binding \
			--with-rpc-backends \
			--with-tcl-binding \
			--with-python-binding \
			--with-tcl=${MODTCL_LIBDIR} \
			--with-xml-support \
			--without-indi
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	rm -f ${PREFIX}/libdata/perl5/site_perl/*-openbsd/perltest.pl \
		${PREFIX}/libdata/perl5/*-openbsd/perllocal.pod
	rmdir ${PREFIX}/libdata/perl5/*-openbsd

.include <bsd.port.mk>
