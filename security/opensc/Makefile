# $OpenBSD: Makefile,v 1.35 2016/06/28 12:56:34 dcoppa Exp $

COMMENT=	set of libraries and utilities to access smart cards

VERSION=	0.16.0
DISTNAME=	OpenSC-${VERSION}
PKGNAME=	opensc-${VERSION}
REVISION=	1
GH_ACCOUNT=	OpenSC
GH_PROJECT=	${GH_ACCOUNT}
GH_TAGNAME=	${VERSION}

SHARED_LIBS +=  opensc 5.0	# 4.0
SHARED_LIBS +=	smm-local 1.0	# 4.0

CATEGORIES=	security

HOMEPAGE=	https://github.com/OpenSC/OpenSC/wiki

MAINTAINER=	David Coppa <dcoppa@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto ncurses pthread readline z

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
		--with-xsl-stylesheetsdir=${LOCALBASE}/share/xsl/docbook
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/PCSC -DOPENSSL_NO_STATIC_ENGINE"

FAKE_FLAGS=	mandir="${PREFIX}/man/" \
		sysconfdir="${PREFIX}/share/examples/opensc/"

AUTOCONF_VERSION = 2.69
AUTOMAKE_VERSION = 1.14

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoreconf -f -i

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKBUILD}/src/libopensc/libopensc.pc \
		${PREFIX}/lib/pkgconfig/

.include <bsd.port.mk>
