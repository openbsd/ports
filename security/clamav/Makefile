# $OpenBSD: Makefile,v 1.109 2016/05/22 21:03:33 sthen Exp $

COMMENT=	virus scanner
DISTNAME=	clamav-0.99.2
REVISION=	0

CATEGORIES=	security

SHARED_LIBS +=	clamav               22.2     # 8.1
SHARED_LIBS +=	clamunrar            3.0      # 8.1
SHARED_LIBS +=	clamunrar_iface      3.0

HOMEPAGE=	http://www.clamav.net/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2/LGPL, with OpenSSL exemption
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += bz2 c crypto curl iconv idn intl ltdl lzma m milter
WANTLIB += ncurses nghttp2 pcre pthread ssl stdc++ xml2 z

BUILD_DEPENDS=		devel/check \
			devel/libexecinfo

LIB_DEPENDS=		archivers/bzip2 \
			devel/gettext \
			devel/libtool,-ltdl \
			devel/pcre \
			mail/sendmail,-libmilter \
			net/curl \
			textproc/libxml

MASTER_SITES=		http://www.clamav.net/downloads/production/

CONFIGURE_STYLE=        gnu
CONFIGURE_ARGS+=        --disable-clamav \
			--enable-dependency-tracking \
			--disable-clamuko \
			--enable-bigstack \
			--enable-milter \
			--with-user=_clamav \
			--with-group=_clamav \
                        --disable-cr \
			--with-dbdir=/var/db/clamav \
			--with-ltdl-include=${LOCALBASE}/include \
			--with-ltdl-lib=${LOCALBASE}/lib

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
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/clamav \
		${PREFIX}/share/examples/clamav
	cd ${WRKSRC}/docs; ${INSTALL_DATA} *.pdf ${PREFIX}/share/doc/clamav
	cd ${WRKSRC}/examples; ${INSTALL_DATA} ex1.c \
		${PREFIX}/share/examples/clamav

pre-test:
	-ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
