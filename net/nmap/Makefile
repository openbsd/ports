# $OpenBSD: Makefile,v 1.137 2019/08/24 06:37:13 giovanni Exp $

COMMENT-main=	scan ports and fingerprint stack of network hosts
COMMENT-zenmap=	graphical frontend for nmap

MODPY_EGG_VERSION=	7.80
DISTNAME=		nmap-${MODPY_EGG_VERSION}
PKGNAME-main=		${DISTNAME}
PKGNAME-zenmap=		nmap-zenmap-${MODPY_EGG_VERSION}

CATEGORIES=	net security
MASTER_SITES=	${HOMEPAGE}/dist/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	https://www.nmap.org/

MAINTAINER=	David Carlier <devnexen@gmail.com>

# GPL (v2 only), with additional clarifications and exceptions, see COPYING
PERMIT_PACKAGE=	Yes

MULTI_PACKAGES=	-main -zenmap

COMPILER =		base-clang ports-gcc base-gcc

USE_GMAKE=	Yes
MODLUA_SA=	Yes
MODLUA_VERSION=	5.3
MODULES=	lang/python \
		lang/lua

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

WANTLIB-main=	c crypto m ssl ssh2 ${COMPILER_LIBCXX} pcre \
		${MODLUA_WANTLIB} z
LIB_DEPENDS-main=devel/pcre \
		${MODLUA_LIB_DEPENDS} \
		security/libssh2

RUN_DEPENDS-zenmap=	x11/py-gtk2 \
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
