# $OpenBSD: Makefile,v 1.111 2014/02/11 16:16:36 sthen Exp $

COMMENT-main=	scan ports and fingerprint stack of network hosts
COMMENT-zenmap=	graphical frontend for nmap

MODPY_EGG_VERSION=	6.40
DISTNAME=		nmap-${MODPY_EGG_VERSION}
REVISION-main=		0
PKGNAME-main=		${DISTNAME}
PKGNAME-zenmap=		nmap-zenmap-${MODPY_EGG_VERSION}

CATEGORIES=	net security
MASTER_SITES=	http://nmap.org/dist/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.nmap.org/

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPL (v2 only), with additional clarifications and exceptions, see COPYING
PERMIT_PACKAGE_CDROM=	Yes

MULTI_PACKAGES=	-main -zenmap

USE_GMAKE=	Yes
MODLUA_SA=	Yes
MODLUA_VERSION=	5.2
MODULES=	lang/python \
		lang/lua

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include -I${MODLUA_INCL_DIR}" \
		CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -L${MODLUA_LIBDIR}"
# XXX uses internal copy of libpcap, previous attempts to deal with the
#     bpf_timeval changes in base libpcap have not been entirely successful
CONFIGURE_ARGS=	--with-libpcap=included \
		--with-openssl=/usr \
		--with-liblua=${LOCALBASE} \
		--with-libpcre=${LOCALBASE} \
		--with-mandir=${LOCALBASE}/man \
		--without-nmap-update \
		--disable-nls

WANTLIB-main=	c crypto m ssl stdc++ pcre pthread ${MODLUA_WANTLIB}
LIB_DEPENDS-main=devel/pcre \
		${MODLUA_LIB_DEPENDS}

RUN_DEPENDS-main=

RUN_DEPENDS-zenmap=	x11/py-gtk2 \
			databases/py-sqlite2 \
			devel/desktop-file-utils \
			net/nmap

NO_TEST=		Yes

post-extract:
	@cd ${WRKSRC} && rm -rf liblua/ libpcre/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/zenmap/install_scripts/unix/su-to-zenmap.sh \
		${WRKSRC}/zenmap/install_scripts/unix/zenmap.desktop \
		${WRKSRC}/zenmap/install_scripts/unix/zenmap-root.desktop

.include <bsd.port.mk>
