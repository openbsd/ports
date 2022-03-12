COMMENT=	set of libraries and utilities to access smart cards

V=		0.22.0
DISTNAME=	opensc-${V}

SHARED_LIBS +=	opensc 7.3	# 8.0
SHARED_LIBS +=	smm-local 3.1

CATEGORIES=	security

HOMEPAGE=	https://github.com/OpenSC/OpenSC/wiki

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto curses ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
		iconv intl pcre pthread readline z

MASTER_SITES=	https://github.com/OpenSC/OpenSC/releases/download/${V}/

BUILD_DEPENDS=	security/pcsc-lite \
		shells/bash-completion \
		textproc/docbook-xsl
RUN_DEPENDS=	devel/desktop-file-utils \
		security/ccid
TEST_DEPENDS=	shells/bash
LIB_DEPENDS=	devel/glib2
LIBTOOL_FLAGS=	--tag=disable-static

USE_GMAKE=	Yes

CONFIGURE_STYLE=autoreconf
CONFIGURE_ARGS=	--enable-static \
		--sysconfdir=${SYSCONFDIR} \
		--enable-sm \
		--disable-cryptotokenkit \
		--with-pkcs11-provider=${LOCALBASE}/lib/pkcs11/opensc-pkcs11.so \
		--with-xsl-stylesheetsdir=${LOCALBASE}/share/xsl/docbook
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/PCSC"

FAKE_FLAGS=	mandir="${PREFIX}/man/" \
		sysconfdir="${PREFIX}/share/examples/opensc/"

AUTOCONF_VERSION = 2.69
AUTOMAKE_VERSION = 1.15

# Allow building with base-gcc
CFLAGS +=	-Wno-error

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${SUBST_CMD} -c -m ${NONBINMODE} -o ${BINOWN} -g ${BINGRP} \
	    ${FILESDIR}/libopensc.pc ${PREFIX}/lib/pkgconfig/libopensc.pc
	@find ${PREFIX}/lib/pkcs11/ -name '*.la' -delete

# only a few tests are normally run. src/tests/regression has a number
# of other tests that require a card.
pre-test:
	sed -i 's,^#!/bin/bash,#!${LOCALBASE}/bin/bash,' ${WRKSRC}/tests/*

.include <bsd.port.mk>
