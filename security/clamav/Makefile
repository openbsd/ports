# $OpenBSD: Makefile,v 1.139 2020/07/20 11:42:54 sthen Exp $

COMMENT=	virus scanner
DISTNAME=	clamav-0.102.4

CATEGORIES=	security

SHARED_LIBS +=	clamav               24.0     # 9.4
SHARED_LIBS +=	clamunrar            4.0      # 9.4
SHARED_LIBS +=	clamunrar_iface      4.0
SHARED_LIBS +=  freshclam            0.0      # 2.0

HOMEPAGE=	https://www.clamav.net/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv2/LGPL, with OpenSSL exemption
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += bz2 c charset crypto curl curses iconv json-c ltdl lzma m
WANTLIB += milter mspack nghttp2 pcre2-8 pthread ssl xml2 z

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

MASTER_SITES=		https://www.clamav.net/downloads/production/

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
CONFIGURE_ENV+=	CC="${CC}" OBJC="${CC}" CXX="${CXX}" \
		LDFLAGS="${LDFLAGS}" \
		CPPFLAGS="${CPPFLAGS}"
FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/clamav

# This is used for a JIT bytecode compiler. Disabling it should
# still allow bytecode to work, just without the W|X-mapping JIT.
CONFIGURE_ARGS+= --disable-llvm

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/clamav
	cd ${WRKSRC}/docs/html; \
	    cp -rp * ${PREFIX}/share/doc/clamav/
	cd ${WRKSRC}/examples; \
	    ${INSTALL_DATA} ex1.c ${PREFIX}/share/examples/clamav

pre-test:
	-ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
