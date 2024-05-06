COMMENT-main=	scan ports and fingerprint stack of network hosts

MODPY_EGG_VERSION=	7.91
DISTNAME=		nmap-${MODPY_EGG_VERSION}
PKGNAME-main=		${DISTNAME}
REVISION=		6

CATEGORIES=	net security
SITES=		${HOMEPAGE}/dist/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	https://www.nmap.org/

MAINTAINER=	JR Aquino <tanawts@gmail.com>

# NPSL, https://nmap.org/npsl/npsl-annotated.html
# For <=7.92, https://nmap.org/misc/nmap-v7.80-license.txt may be used instead
# XXX license needs checking over before updating beyond 7.92
PERMIT_PACKAGE=	Yes

MULTI_PACKAGES=	-main

COMPILER=	base-clang ports-gcc base-gcc

USE_GMAKE=	Yes
MODLUA_SA=	Yes
MODLUA_VERSION=	5.3
MODULES=	lang/python \
		lang/lua

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
		--without-zenmap \
		--disable-nls

WANTLIB-main=	${COMPILER_LIBCXX} ${MODLUA_WANTLIB} \
		c crypto m ssl ssh2 pcre z
LIB_DEPENDS-main= ${MODLUA_LIB_DEPENDS} \
		devel/pcre \
		security/libssh2

BUILD_DEPENDS=	devel/bison

post-extract:
	@cd ${WRKSRC} && rm -rf liblua/ libpcre/
	2to3 --fix=all --no-diffs --nobackups --verbose --write \
		${WRKSRC}/ndiff/*py ${WRKSRC}/ndiff/scripts/ndiff

pre-configure:
	@cd ${WRKSRC}/nping ; env PATH=${PORTPATH} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf

.include <bsd.port.mk>
