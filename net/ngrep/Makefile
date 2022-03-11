COMMENT=	network grep

GH_ACCOUNT=	jpr5
GH_PROJECT=	ngrep
GH_COMMIT=	2a9603bc67dface9606a658da45e1f5c65170444
DISTNAME=	ngrep-1.47.20190128

CATEGORIES=	net

# custom BSD-like
PERMIT_PACKAGE=	Yes

WANTLIB=	c pcap pcre
LIB_DEPENDS=	devel/pcre

NO_TEST=	Yes

USE_GMAKE=	Yes
AUTOCONF_VERSION= 2.69
CONFIGURE_STYLE= autoconf no-autoheader
CONFIGURE_ARGS+= --enable-ipv6 \
		 --enable-pcre \
		 --with-dropprivs-user=_ngrep
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS=-L${LOCALBASE}/lib

do-install:
	cd ${WRKSRC}; \
	${INSTALL_PROGRAM} ngrep ${PREFIX}/sbin/ngrep; \
	${INSTALL_MAN} ngrep.8 ${PREFIX}/man/man8/ngrep.8

.include <bsd.port.mk>
