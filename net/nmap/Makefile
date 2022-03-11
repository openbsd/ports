COMMENT-main=	scan ports and fingerprint stack of network hosts
COMMENT-zenmap=	graphical frontend for nmap

MODPY_EGG_VERSION=	7.91
DISTNAME=		nmap-${MODPY_EGG_VERSION}
PKGNAME-main=		${DISTNAME}
PKGNAME-zenmap=		nmap-zenmap-${MODPY_EGG_VERSION}
REVISION=		2

CATEGORIES=	net security
MASTER_SITES=	${HOMEPAGE}/dist/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	https://www.nmap.org/

MAINTAINER=	JR Aquino <tanawts@gmail.com>

# NPSL, https://nmap.org/npsl/npsl-annotated.html
# For <=7.92, https://nmap.org/misc/nmap-v7.80-license.txt may be used instead
# XXX license needs checking over before updating beyond 7.92
PERMIT_PACKAGE=	Yes

MULTI_PACKAGES=	-main -zenmap

COMPILER=	base-clang ports-gcc base-gcc

USE_GMAKE=	Yes
MODLUA_SA=	Yes
MODLUA_VERSION=	5.3
MODPY_RUNDEP=	No
MODULES=	lang/python \
		lang/lua
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_2}

DEBUG_PACKAGES=	${BUILD_PACKAGES}
CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.69

CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include -I${MODLUA_INCL_DIR}" \
		CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib ${MODLUA_LIB}" \
		YACC="${LOCALBASE}/bin/bison -y"
# XXX uses internal copy of libpcap, previous attempts to deal with the
#     bpf_timeval changes in base libpcap have not been entirely successful
CONFIGURE_ARGS=	--with-libpcap=included \
		--with-openssl=/usr \
		--with-liblua=${LOCALBASE} \
		--with-libpcre=${LOCALBASE} \
		--with-mandir=${LOCALBASE}/man \
		--without-nmap-update \
		--disable-nls

WANTLIB-main=	${COMPILER_LIBCXX} ${MODLUA_WANTLIB} \
		c crypto m ssl ssh2 pcre z
LIB_DEPENDS-main= ${MODLUA_LIB_DEPENDS} \
		devel/pcre \
		security/libssh2

RUN_DEPENDS-zenmap=	${MODPY_RUN_DEPENDS} \
			x11/py-gtk2 \
			databases/py-sqlite2 \
			devel/desktop-file-utils \
			net/nmap

BUILD_DEPENDS=		devel/bison

post-extract:
	@cd ${WRKSRC} && rm -rf liblua/ libpcre/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/zenmap/install_scripts/unix/su-to-zenmap.sh \
		${WRKSRC}/zenmap/install_scripts/unix/zenmap.desktop \
		${WRKSRC}/zenmap/install_scripts/unix/zenmap-root.desktop
	@cd ${WRKSRC}/nping ; env PATH=${PORTPATH} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf

.include <bsd.port.mk>
