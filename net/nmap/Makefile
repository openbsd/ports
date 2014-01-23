# $OpenBSD: Makefile,v 1.109 2014/01/23 00:40:57 sthen Exp $

COMMENT-main=	scan ports and fingerprint stack of network hosts
COMMENT-zenmap=	graphical frontend for nmap

MODPY_EGG_VERSION=	6.25
DISTNAME=		nmap-${MODPY_EGG_VERSION}
PKGNAME-main=		${DISTNAME}
REVISION-main=		1
PKGNAME-zenmap=		nmap-zenmap-${MODPY_EGG_VERSION}

CATEGORIES=	net security
MASTER_SITES=	http://nmap.org/dist/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.nmap.org/

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPL (v2 only), with additional clarifications and exceptions, see COPYING
PERMIT_PACKAGE_CDROM=	Yes

MULTI_PACKAGES=	-main -zenmap

USE_GMAKE=	yes
MODLUA_SA=	Yes
MODLUA_VERSION=5.2
MODULES=	lang/python \
			lang/lua

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
		CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-libpcap=/usr \
		--with-openssl=/usr \
		--with-liblua=${LOCALBASE} \
		--with-libpcre=${LOCALBASE} \
		--with-mandir=${LOCALBASE}/man \
		--without-nmap-update \
		--disable-nls

WANTLIB-main=		c crypto m pcap ssl stdc++ pcre pthread ${MODLUA_WANTLIB}
LIB_DEPENDS-main=	devel/pcre \
			${MODLUA_LIB_DEPENDS}

RUN_DEPENDS-main=

RUN_DEPENDS-zenmap=	x11/py-gtk2 \
			databases/py-sqlite2 \
			devel/desktop-file-utils \
			net/nmap

NO_TEST=		Yes

post-extract:
	@cd ${WRKSRC} && rm -rf libpcap/ liblua/ libpcre/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/zenmap/install_scripts/unix/su-to-zenmap.sh \
		${WRKSRC}/zenmap/install_scripts/unix/zenmap.desktop \
		${WRKSRC}/zenmap/install_scripts/unix/zenmap-root.desktop

.include <bsd.port.mk>
