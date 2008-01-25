# $OpenBSD: Makefile,v 1.74 2008/01/25 01:21:17 okan Exp $

COMMENT-main=	scan ports and fingerprint stack of network hosts
COMMENT-zenmap=	graphical frontend for nmap

V=		4.53
DISTNAME=	nmap-$V
PKGNAME-main=	${DISTNAME}
PKGNAME-zenmap=	nmap-zenmap-$V

CATEGORIES=	net security
MASTER_SITES=	${HOMEPAGE}dist/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.insecure.org/nmap/

MAINTAINER=	Giovanni Bechis <g.bechis@snb.it>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=	-main -zenmap

WANTLIB-main=	c crypto m pcap ssl stdc++ 

SUBST_VARS=	V

USE_GMAKE=	yes
MODULES=	lang/python

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-libpcap=/usr \
		--with-openssl=/usr \
		--with-libdnet=${LOCALBASE} \
		--with-liblua=${LOCALBASE} \
		--with-libpcre=${LOCALBASE}

LIB_DEPENDS=	pcre::devel/pcre \
		dnet::net/libdnet \
		lua.>=5::lang/lua

LIB_DEPENDS-zenmap=

RUN_DEPENDS-main=
RUN_DEPENDS-zenmap=	::x11/py-gtk2 \
			::databases/py-sqlite2 \
			::net/nmap

NO_REGRESS=	Yes

post-extract:
	@cd ${WRKSRC} && rm -rf libpcap/ libdnet-stripped/ liblua/ libpcre/

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/zenmap.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
