# $OpenBSD: Makefile,v 1.52 2010/08/30 21:16:17 jasper Exp $

COMMENT=		virus scanner
DISTNAME=		clamav-0.96.2
REVISION=		0

CATEGORIES=		security
SHARED_LIBS=		clamav 14.0 \
			clamunrar 2.0 \
			clamunrar_iface 2.0

HOMEPAGE=		http://www.clamav.net/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# GPLv2/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		bz2 c ltdl m milter ncurses pthread stdc++ z

BUILD_DEPENDS=		::devel/check

# XXX can this use llvm from ports rather than bundled?
LIB_DEPENDS=		::archivers/bzip2 \
			::devel/libtool,-ltdl

RUN_DEPENDS=		::archivers/lha \
			::archivers/zoo \
			::archivers/arc \
			::archivers/unzip 

USE_LIBTOOL=		Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=clamav/}

CONFIGURE_STYLE=        gnu
CONFIGURE_ARGS+=        ${CONFIGURE_SHARED}
CONFIGURE_ARGS+=        --disable-clamav \
			--enable-dependency-tracking \
			--disable-clamuko \
			--enable-bigstack \
			--enable-milter \
			--enable-silent-rules=no \
			--with-user=_clamav \
			--with-group=_clamav \
                        --disable-cr \
			--with-dbdir=/var/db/clamav \
			--with-ltdl-include=${LOCALBASE}/include \
			--with-ltdl-lib=${LOCALBASE}/lib

REGRESS_TARGET=	check
MODULES=	lang/python converters/libiconv
MODPY_RUNDEP=	no

CPPFLAGS+=	-I/usr/include -I${LOCALBASE}/include
LDFLAGS+=	-pthread -L/usr/lib -L${WRKSRC}/libclamav/.libs \
		-L${LOCALBASE}/lib
CONFIGURE_ENV+=	LDFLAGS="${LDFLAGS}" \
		CPPFLAGS="${CPPFLAGS}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/clamav \
		${PREFIX}/share/examples/clamav
	cd ${WRKSRC}/docs; ${INSTALL_DATA} *.pdf ${PREFIX}/share/doc/clamav
	cd ${WRKSRC}/etc; ${INSTALL_DATA} clamd.conf freshclam.conf \
		clamav-milter.conf ${PREFIX}/share/examples/clamav
	cd ${WRKSRC}/examples; ${INSTALL_DATA} ex1.c \
		${PREFIX}/share/examples/clamav

pre-regress:
	ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
