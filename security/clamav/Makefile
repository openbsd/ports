# $OpenBSD: Makefile,v 1.17 2006/08/03 23:28:11 espie Exp $

COMMENT=		"virus scanner"
DISTNAME=		clamav-0.88.2
CATEGORIES=		security
SHARED_LIBS=		clamav 1.19
MODGNU_SHARED_LIBS=	clamav ''
LIBclamav_ALIAS=	realclamav

HOMEPAGE=		http://www.clamav.net/

MAINTAINER=		Marc Balmer <mbalmer@openbsd.org>

#GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto pthread ssl z wrap milter

LIB_DEPENDS=		gmp.>=6::devel/gmp \
			curl.>=2::net/curl \
			bz2.>=10::archivers/bzip2

RUN_DEPENDS=		:lha-*:archivers/lha \
			:unarj-*:archivers/unarj \
			:unrar-*:archivers/unrar \
			:zoo-*:archivers/zoo \
			:arc-*:archivers/arc \
			:unzip-*:archivers/unzip 

USE_LIBTOOL=		Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=clamav/} \
			${HOMEPAGE}

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
			--with-libcurl

NO_REGRESS=		Yes

CONFIGURE_ENV+=		LDFLAGS="-L/usr/lib -L${LOCALBASE}/lib" \
			CPPFLAGS="-I/usr/include -I${LOCALBASE}/include"

DOCS=			clamav-mirror-howto.pdf clamdoc.pdf signatures.pdf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/clamav \
		${PREFIX}/share/examples/clamav
	cd ${WRKSRC}/docs; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/clamav
	cd ${WRKSRC}/etc; ${INSTALL_DATA} clamd.conf \
		freshclam.conf ${PREFIX}/share/examples/clamav
	cd ${WRKSRC}/examples; ${INSTALL_DATA} ex1.c \
		${PREFIX}/share/examples/clamav

.include <bsd.port.mk>
