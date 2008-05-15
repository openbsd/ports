# $OpenBSD: Makefile,v 1.76 2008/05/15 18:30:14 okan Exp $

COMMENT-main=	scan ports and fingerprint stack of network hosts
COMMENT-zenmap=	graphical frontend for nmap

V=		4.62
DISTNAME=	nmap-$V
PKGNAME-main=	${DISTNAME}
PKGNAME-zenmap=	nmap-zenmap-$V

CATEGORIES=	net security
MASTER_SITES=	http://download.insecure.org/nmap/dist/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.nmap.org/

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

.if ${MACHINE_ARCH} == "alpha"
CFLAGS+=	-mieee
.endif

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
		CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
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
	cd ${WRKINST}${MODPY_SITEPKG} && \
		${MODPY_BIN} -c 'import zenmapCore.Paths'

.include <bsd.port.mk>
