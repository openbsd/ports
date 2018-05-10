# $OpenBSD: Makefile,v 1.46 2018/05/10 16:02:56 kn Exp $

COMMENT=	set of libraries and utilities to access smart cards

V=		0.17.0
DISTNAME=	opensc-${V}
REVISION=	3
SUBST_VARS +=	V

SHARED_LIBS +=  opensc 6.0	# 5.0
SHARED_LIBS +=	smm-local 2.0	# 5.0

CATEGORIES=	security

HOMEPAGE=	https://github.com/OpenSC/OpenSC/wiki

MAINTAINER=	David Coppa <dcoppa@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto ncurses pthread readline z

MASTER_SITES=	https://github.com/OpenSC/OpenSC/releases/download/${V}/

BUILD_DEPENDS=	devel/libtool \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		security/pcsc-lite \
		textproc/docbook-xsl
RUN_DEPENDS=	security/ccid

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-static \
		--sysconfdir=${SYSCONFDIR} \
		--enable-sm \
		--disable-cryptotokenkit \
		--with-xsl-stylesheetsdir=${LOCALBASE}/share/xsl/docbook
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/PCSC"

FAKE_FLAGS=	mandir="${PREFIX}/man/" \
		sysconfdir="${PREFIX}/share/examples/opensc/"

AUTOCONF_VERSION = 2.69
AUTOMAKE_VERSION = 1.14

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoreconf -f -i

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${SUBST_CMD} -c -m 0644 -o ${BINOWN} -g ${BINGRP} \
		${FILESDIR}/libopensc.pc \
			${PREFIX}/lib/pkgconfig/libopensc.pc
	@find ${PREFIX}/lib/pkcs11/ -name '*.la' -delete

.include <bsd.port.mk>
