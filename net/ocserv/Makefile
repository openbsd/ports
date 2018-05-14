# $OpenBSD: Makefile,v 1.34 2018/05/14 19:50:44 bket Exp $

COMMENT=	server implementing the AnyConnect SSL VPN protocol

DISTNAME=	ocserv-0.12.1
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	net

HOMEPAGE=	https://ocserv.gitlab.io/www/

MAINTAINER=	Bjorn Ketelaars <bket@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=	c curses ev gnutls lz4 m nettle oath pam protobuf-c
WANTLIB+=	radcli readline talloc

MASTER_SITES=	ftp://ftp.infradead.org/pub/ocserv/

LIB_DEPENDS=	archivers/lz4 \
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

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--without-docker-tests \
			--without-geoip \
			--without-http-parser \
			--without-nuttcp-tests \
			--without-pcl-lib

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

AUTOCONF_VERSION=	2.69

post-extract:
	sed -i 's,#!/bin/bash,#!${LOCALBASE}/bin/bash,' \
	    ${WRKSRC}/tests/test-{iroute,append-routes,user-config} \
	    ${WRKSRC}/tests/haproxy-connect \
	    ${WRKSRC}/tests/multiple-routes
	sed -i 's,/usr/sbin/openconnect,${LOCALBASE}/sbin/openconnect,' \
	    ${WRKSRC}/tests/common.sh
	sed -i 's,/etc/ocserv,${SYSCONFDIR}/ocserv,' \
	    ${WRKSRC}/src/ocpasswd/ocpasswd.c
	sed -i 's,/usr/bin/ocserv-fw,${SYSCONFDIR}/ocserv/ocserv-fw,g' \
	    ${WRKSRC}/src/main-user.c \
	    ${WRKSRC}/doc/sample.config
	sed -i 's,/usr/bin/ocserv\\-fw,${SYSCONFDIR}/ocserv/ocserv\\-fw,g' \
	    ${WRKSRC}/doc/ocserv.8

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ocserv
	cd ${WRKSRC}/doc; ${INSTALL_DATA} profile.xml sample.passwd \
	    ${PREFIX}/share/examples/ocserv/
	mv ${PREFIX}/bin/ocserv-fw ${PREFIX}/share/examples/ocserv/
	${SUBST_CMD} -c -m ${SHAREMODE} -o ${SHAREOWN} -g ${SHAREGRP} \
	    ${WRKSRC}/doc/sample.config \
	    ${PREFIX}/share/examples/ocserv/sample.config
	${INSTALL_MAN} ${WRKSRC}/doc/*.8 ${PREFIX}/man/man8/

pre-test:
	ln -fs ${LOCALBASE}/bin/gtimeout ${WRKDIR}/bin/timeout

post-test:
	@[ `id -u` == 0 ] || printf \
	 "\n*** NOTE: ocserv has loopback tests which require root ***\n\n"

.include <bsd.port.mk>
