# $OpenBSD: Makefile,v 1.28 2018/01/30 00:53:52 sthen Exp $

COMMENT=	server implementing the AnyConnect SSL VPN protocol

DISTNAME=	ocserv-0.11.10
REVISION=	0
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	net

HOMEPAGE=	http://www.infradead.org/ocserv/

MAINTAINER=	Bjorn Ketelaars <bjorn.ketelaars@hydroxide.nl>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =	c curses ev gnutls intl lz4 m nettle oath pam protobuf-c
WANTLIB +=	radcli readline talloc

MASTER_SITES=	ftp://ftp.infradead.org/pub/ocserv/

LIB_DEPENDS=	archivers/lz4 \
		devel/gettext \
		devel/libev \
		devel/libtalloc \
		devel/protobuf-c \
		net/radcli>=1.2.5 \
		security/gnutls \
		security/oath-toolkit \
		security/openpam
TEST_DEPENDS=	net/openconnect \
		shells/bash \
		sysutils/coreutils

SEPARATE_BUILD=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--enable-local-libopts \
			--without-http-parser \
			--without-pcl-lib

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

AUTOCONF_VERSION=	2.69

post-extract:
	sed -i 's,#!/bin/bash,#!${LOCALBASE}/bin/bash,' \
	    ${WRKSRC}/tests/test-{iroute,append-routes,user-config}
	sed -i 's,/usr/sbin/openconnect,${LOCALBASE}/sbin/openconnect,' \
	    ${WRKSRC}/tests/common.sh
	sed -i 's,/etc/ocserv,${SYSCONFDIR}/ocserv,' \
	    ${WRKSRC}/src/ocpasswd/ocpasswd.c
	cd ${WRKSRC}; \
	    sed -i 's,/usr/bin/ocserv-fw,${SYSCONFDIR}/ocserv/ocserv-fw,g' \
	    src/ocserv-args.def src/main-user.c doc/ocserv.8 doc/sample.config

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ocserv
	cd ${WRKSRC}/doc; ${INSTALL_DATA} profile.xml sample.passwd \
	    ${PREFIX}/share/examples/ocserv/
	mv ${PREFIX}/bin/ocserv-fw ${PREFIX}/share/examples/ocserv/
	${SUBST_CMD} -c -m ${SHAREMODE} -o ${SHAREOWN} -g ${SHAREGRP} \
	    ${WRKSRC}/doc/sample.config \
	    ${PREFIX}/share/examples/ocserv/sample.config

pre-test:
	ln -fs ${LOCALBASE}/bin/gtimeout ${WRKDIR}/bin/timeout

post-test:
	@[ `id -u` == 0 ] || printf \
	 "\n*** NOTE: ocserv has loopback tests which require root ***\n\n"

.include <bsd.port.mk>
