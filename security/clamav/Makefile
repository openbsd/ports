# $OpenBSD: Makefile,v 1.88 2014/01/15 13:06:47 jasper Exp $

COMMENT=		virus scanner
DISTNAME=		clamav-0.98.1

CATEGORIES=		security
SHARED_LIBS=		clamav 21.1 \
			clamunrar 3.0 \
			clamunrar_iface 3.0

HOMEPAGE=		http://www.clamav.net/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# GPLv2/LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		bz2 c ltdl m milter ncurses pthread xml2 z

BUILD_DEPENDS=		devel/check \
			devel/libexecinfo

LIB_DEPENDS=		archivers/bzip2 \
			devel/libtool,-ltdl \
			textproc/libxml

RUN_DEPENDS=		archivers/lha \
			archivers/arc \
			archivers/unzip

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=clamav/}

CONFIGURE_STYLE=        gnu
CONFIGURE_ARGS+=        ${CONFIGURE_SHARED}
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
MODULES=	lang/python converters/libiconv
MODPY_RUNDEP=	no

CPPFLAGS+=	-I/usr/include -I${LOCALBASE}/include
LDFLAGS+=	-pthread -L/usr/lib \
		-L${LOCALBASE}/lib
CONFIGURE_ENV+=	LDFLAGS="${LDFLAGS}" \
		CPPFLAGS="${CPPFLAGS}"
FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/clamav

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mllvm}
BUILD_DEPENDS+=		devel/llvm

pre-configure:
	rm -rf ${WRKSRC}/libclamav/c++/llvm
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/clamav \
		${PREFIX}/share/examples/clamav
	cd ${WRKSRC}/docs; ${INSTALL_DATA} *.pdf ${PREFIX}/share/doc/clamav
	cd ${WRKSRC}/examples; ${INSTALL_DATA} ex1.c \
		${PREFIX}/share/examples/clamav

pre-test:
	-ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
