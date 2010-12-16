# $OpenBSD: Makefile,v 1.95 2010/12/16 17:40:20 giovanni Exp $

COMMENT-main=	scan ports and fingerprint stack of network hosts
COMMENT-zenmap=	graphical frontend for nmap

MODPY_EGG_VERSION=	5.21
DISTNAME=		nmap-${MODPY_EGG_VERSION}
REVISION-main=		3
REVISION-zenmap=	1
PKGNAME-main=		${DISTNAME}
PKGNAME-zenmap=		nmap-zenmap-${MODPY_EGG_VERSION}

CATEGORIES=	net security
MASTER_SITES=	http://nmap.org/dist/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.nmap.org/

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=	-main -zenmap

USE_GMAKE=	yes
MODULES=	lang/python

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
		CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-libpcap=/usr \
		--with-openssl=/usr \
		--with-libdnet=${LOCALBASE} \
		--with-liblua=${LOCALBASE} \
		--with-libpcre=${LOCALBASE} \
		--with-mandir=${LOCALBASE}/man \
		--disable-nls

WANTLIB-main=		c crypto m pcap ssl stdc++ pcre dnet lua>=5
LIB_DEPENDS-main=	devel/pcre \
			net/libdnet \
			lang/lua

RUN_DEPENDS-main=

RUN_DEPENDS-zenmap=	x11/py-gtk2 \
			databases/py-sqlite2 \
			devel/desktop-file-utils \
			net/nmap

NO_REGRESS=		Yes

post-extract:
	@cp ${WRKSRC}/libdnet-stripped/include/dnet/sctp.h ${WRKSRC}/sctp.h
	@cd ${WRKSRC} && rm -rf libpcap/ libdnet-stripped/ liblua/ libpcre/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/zenmap/install_scripts/unix/su-to-zenmap.sh

.include <bsd.port.mk>
