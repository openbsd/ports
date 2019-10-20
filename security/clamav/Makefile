# $OpenBSD: Makefile,v 1.131 2019/10/20 10:57:14 ajacoutot Exp $

COMMENT=	virus scanner
DISTNAME=	clamav-0.101.4

REVISION=	0

CATEGORIES=	security

SHARED_LIBS +=	clamav               24.0     # 9.2
SHARED_LIBS +=	clamunrar            4.0      # 9.2
SHARED_LIBS +=	clamunrar_iface      4.0

HOMEPAGE=	http://www.clamav.net/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2/LGPL, with OpenSSL exemption
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += bz2 c crypto curl curses iconv json-c ltdl lzma m milter
WANTLIB += mspack nghttp2 pcre2-8 pthread ssl xml2 z

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS=		devel/check \
			devel/libexecinfo

LIB_DEPENDS=		archivers/bzip2 \
			archivers/libmspack \
			devel/json-c \
			devel/libtool,-ltdl \
			devel/pcre2 \
			mail/sendmail,-libmilter \
			net/curl \
			textproc/libxml
TEST_DEPENDS=		security/clamav

MASTER_SITES=		http://www.clamav.net/downloads/production/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-cr \
			--enable-bigstack \
			--enable-milter \
			--with-dbdir=/var/db/clamav \
			--with-group=_clamav \
			--with-ltdl-include=${LOCALBASE}/include \
			--with-ltdl-lib=${LOCALBASE}/lib \
			--with-system-libmspack \
			--with-user=_clamav

TEST_TARGET=	check
MODULES=	lang/python
MODPY_RUNDEP=	no

CPPFLAGS+=	-I/usr/include -I${LOCALBASE}/include
LDFLAGS+=	-pthread -L/usr/lib \
		-L${LOCALBASE}/lib
CONFIGURE_ENV+=	LDFLAGS="${LDFLAGS}" \
		CPPFLAGS="${CPPFLAGS}"
FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/clamav

# This is used for a JIT bytecode compiler. Disabling it should
# still allow bytecode to work, just without the W|X-mapping JIT.
CONFIGURE_ARGS+= --disable-llvm

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/clamav
	cd ${WRKSRC}/docs; \
	    cp -rp UserManual* html ${PREFIX}/share/doc/clamav/
	cd ${WRKSRC}/examples; \
	    ${INSTALL_DATA} ex1.c ${PREFIX}/share/examples/clamav

pre-test:
	-ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
