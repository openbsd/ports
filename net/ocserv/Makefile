# $OpenBSD: Makefile,v 1.11 2015/11/30 11:58:57 sthen Exp $

COMMENT=	server implementing the AnyConnect SSL VPN protocol

DISTNAME=	ocserv-0.10.10
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	net

HOMEPAGE=	http://www.infradead.org/ocserv/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gnutls lz4 ncurses oath pam protobuf-c pthread
WANTLIB += radcli readline talloc

MASTER_SITES=	ftp://ftp.infradead.org/pub/ocserv/

MODULES=	devel/gettext
LIB_DEPENDS=	archivers/lz4 \
		devel/protobuf-c \
		devel/libtalloc \
		net/radcli \
		security/gnutls \
		security/oath-toolkit \
		security/openpam

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
USE_GMAKE=	Yes
USE_GROFF=	Yes # missing flags
# .NOP \f\*[B-Font]\-s\f[] \f\*[I-Font]file\f[], \f\*[B-Font]\-\-socket\-file\f[]=\f\*[I-Font]file\f[]
# There's also "ERROR: skipping unknown macro: .an-trap" but this is probably unimportant
CONFIGURE_ARGS=	--enable-local-libopts \
		--without-http-parser \
		--without-pcl-lib

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# most tests are known to fail on OpenBSD anyway, but let's patch the
# obvious issues.
post-extract:
	sed -i 's,/usr/local/bin/bash,${LOCALBASE}/bin/bash,' \
	    ${WRKSRC}/tests/test-iroute
	sed -i 's,/usr/local/sbin/openconnect,${LOCALBASE}/sbin/openconnect,' \
	    ${WRKSRC}/tests/common.sh
	sed -i 's,/etc/ocserv,${SYSCONFDIR}/ocserv,' ${WRKSRC}/src/ocpasswd.c
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

.include <bsd.port.mk>
