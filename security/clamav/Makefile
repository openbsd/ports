# $OpenBSD: Makefile,v 1.44 2009/06/11 10:50:49 sthen Exp $

COMMENT=		virus scanner
DISTNAME=		clamav-0.95.2
CATEGORIES=		security
SHARED_LIBS=		clamav 12.0 \
			clamunrar 2.0 \
			clamunrar_iface 2.0

HOMEPAGE=		http://www.clamav.net/

MAINTAINER=		Marc Balmer <mbalmer@openbsd.org>

# GPLv2/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c milter ncurses pthread z

BUILD_DEPENDS=		::devel/check

LIB_DEPENDS=		bz2.>=10::archivers/bzip2 \
			iconv.>=4::converters/libiconv \
			ltdl:libltdl-*:devel/libtool,-ltdl

RUN_DEPENDS=		:lha-*:archivers/lha \
			:zoo-*:archivers/zoo \
			:arc-*:archivers/arc \
			:unzip-*:archivers/unzip 

USE_LIBTOOL=		Yes

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

REGRESS_TARGET=		check

CONFIGURE_ENV+=		LDFLAGS="-pthread -L/usr/lib -L${WRKSRC}/libclamav/.libs -L${LOCALBASE}/lib" \
			CPPFLAGS="-I/usr/include -I${LOCALBASE}/include"

DOCS=			clamav-mirror-howto.pdf clamdoc.pdf signatures.pdf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/clamav \
		${PREFIX}/share/examples/clamav
	cd ${WRKSRC}/docs; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/clamav
	cd ${WRKSRC}/etc; ${INSTALL_DATA} clamd.conf freshclam.conf \
		clamav-milter.conf ${PREFIX}/share/examples/clamav
	cd ${WRKSRC}/examples; ${INSTALL_DATA} ex1.c \
		${PREFIX}/share/examples/clamav

.include <bsd.port.mk>
