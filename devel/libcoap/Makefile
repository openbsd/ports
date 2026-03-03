COMMENT=	communicate with embedded devices using CoAP (RFC 7252)

GH_ACCOUNT=	obgm
GH_PROJECT=	libcoap
GH_TAGNAME=	v4.3.5a
PKGNAME=	libcoap-4.3.5pl1

# check version in submodule for the correct tag; see /ext/tinydtls
# alternatively, should work with system tinydtls, or other TLS
# libraries can be used.
DIST_TUPLE=	github eclipse-tinydtls tinydtls 4a6a78236043da7f8af9ad7be8488aeed6884eda ext/tinydtls

SHARED_LIBS +=  coap-3-tinydtls             0.0 # 1.1
SHARED_LIBS +=  tinydtls                    0.0

CATEGORIES=	devel

HOMEPAGE=	https://libcoap.net/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c

BUILD_DEPENDS=	devel/cunit \
		devel/m4 \
		textproc/asciidoc \
		textproc/gsed

USE_GMAKE=	Yes
MAKE_ENV=	LIBtinydtls_VERSION=${LIBtinydtls_VERSION}
FAKE_FLAGS=	DESTDIR=${WRKINST} PREFIX=${TRUEPREFIX}

CONFIGURE_STYLE= autoreconf
CONFIGURE_ARGS=	--disable-doxygen \
		--enable-static \
		--enable-shared \
		--enable-examples \
		--enable-tests \
		--with-tinydtls \
		--with-submodule-tinydtls

# --disable-doxygen is not taken into account by ext/tinydtls/configure
CONFIGURE_ENV=	ac_cv_path_DOXYGEN=: \
		CPPFLAGS=-DAI_ALL=0

AUTOCONF_VERSION= 2.72
AUTOMAKE_VERSION= 1.18

# m4_format([%u%03u%03u],...) unsupported with base m4
AUTORECONF=	M4=${LOCALBASE}/bin/gm4 ./autogen.sh

post-extract:
	ln -s ${LOCALBASE}/bin/gsed ${WRKDIR}/bin/sed

post-install:
	mv ${PREFIX}/share/libcoap/examples ${PREFIX}/share/examples/libcoap
	rmdir ${PREFIX}/share/libcoap
	cd ${PREFIX}/man/man5; for i in coap-{client,server,rd}*; do \
		if [ -r ../../bin/$${i%.5} ]; then \
			mv $$i ../man1/$${i%.5}.1; \
		else \
			rm $$i; \
		fi; \
	done

.include <bsd.port.mk>
