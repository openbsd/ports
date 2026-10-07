COMMENT=	network grep

GH_ACCOUNT=	jpr5
GH_PROJECT=	ngrep
GH_TAGNAME=	v1.49.0

CATEGORIES=	net

# custom BSD-like
PERMIT_PACKAGE=	Yes

WANTLIB=	c pcap pcre2-8 pcre2-posix

FLAVORS=	tcpkill
FLAVOR ?=

LIB_DEPENDS=	devel/pcre2

USE_GMAKE=	Yes
AUTOCONF_VERSION= 2.72
CONFIGURE_STYLE= autoconf no-autoheader
CONFIGURE_ARGS=	--enable-ipv6 \
		--enable-pcre2 \
		--with-dropprivs-user=_ngrep
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS=-L${LOCALBASE}/lib

.if ${FLAVOR:Mtcpkill}
WANTLIB +=	lib/libnet-1.1/net=11
LIB_DEPENDS +=	net/libnet/1.1
CONFIGURE_ARGS += --enable-tcpkill
.endif

NO_TEST=	Yes

DEBUG_PACKAGES=	${BUILD_PACKAGES}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ngrep ${PREFIX}/sbin/ngrep
	${INSTALL_MAN} ${WRKSRC}/ngrep.8 ${PREFIX}/man/man8/ngrep.8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ngrep
	${INSTALL_DATA} ${WRKSRC}/{README,EXAMPLES}.md \
		${PREFIX}/share/doc/ngrep

.include <bsd.port.mk>
