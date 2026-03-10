COMMENT=	scan ports and fingerprint stack of network hosts

DISTNAME=	nmap-7.98

# "grep version ndiff/pyproject.toml" (used in ndiff-x.yz.dist-info files)
MODPY_DISTV=	7.96

CATEGORIES=	net security
EXTRACT_SUFX=	.tgz

HOMEPAGE=	https://www.nmap.org/
SITES=		https://www.nmap.org/dist/

MAINTAINER=	JR Aquino <tanawts@gmail.com>

# NPSL, https://nmap.org/npsl/npsl-annotated.html
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} ${MODLUA_WANTLIB} \
		c crypto lib/libpcap/pcap m ssl ssh2 pcre2-8 z

DEBUG_PACKAGES=	${BUILD_PACKAGES}

COMPILER=	base-clang ports-gcc

USE_GMAKE=	Yes
MODLUA_SA=	Yes
MODLUA_VERSION=	5.4
MODULES=	lang/python \
		lang/lua

CONFIGURE_STYLE=  autoconf
AUTOCONF_VERSION= 2.71
AUTOCONF_DIR=	${WRKSRC} ${WRKSRC}/ncat ${WRKSRC}/nping ${WRKSRC}/nsock/src

CONFIGURE_ENV=	CFLAGS="${CFLAGS}" \
		CPPFLAGS="-I${LOCALBASE}/include/libpcap -I${LOCALBASE}/include -I${MODLUA_INCL_DIR}" \
		CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib/libpcap -Wl,-rpath,${LOCALBASE}/lib/libpcap -L${LOCALBASE}/lib" \
		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS=	--with-openssl=/usr \
		--with-liblua=${LOCALBASE} \
		--with-libpcre=${LOCALBASE} \
		--with-mandir=${LOCALBASE}/man \
		--without-ndiff \
		--without-nmap-update \
		--without-zenmap \
		--disable-nls

BUILD_DEPENDS=	devel/bison
LIB_DEPENDS=	${MODLUA_LIB_DEPENDS} \
		devel/pcre2 \
		net/libpcap \
		security/libssh2

post-extract:
	cd ${WRKSRC}; rm -rf liblua libssh2 libpcap libpcre libz

MODPY_PYBUILD=	setuptools
MODPY_BUILD_DIR= ${WRKSRC}/ndiff

post-build:
	${MODPY_BUILD_TARGET}

post-install:
	${MODPY_INSTALL_TARGET}
	${INSTALL_MAN} ${WRKSRC}/ndiff/docs/ndiff.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>

.if defined(DEBUG)
FAKE_FLAGS=	STRIP=:
.endif
