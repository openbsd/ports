# $OpenBSD: Makefile,v 1.2 2007/07/04 21:29:08 jasper Exp $

COMMENT=		modular webapplication server for C++

DISTNAME=		tntnet-1.6.0.1
CATEGORIES=		www devel

HOMEPAGE=		http://www.tntnet.org/

SO_VERSION=	0.1
.for _lib in alldemos calc calcajax calci18n calcmvc chat comp config controls \
cookie extlib hello savepoint session sprintf strings tntnet tntnet_cgi \
tntnet_sdk upload
SHARED_LIBS+=	${_lib}	${SO_VERSION}
.endfor

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB= c crypto m pthread ssl stdc++ z

MASTER_SITES=		${HOMEPAGE}download/

MODULES=		converters/libiconv

MODULES+=		gcc3
MODGCC3_ARCHES= 	sparc
MODGCC3_LANGS=		c++

LIB_DEPENDS= 		cxxtools::devel/cxxtools

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS= 	--with-ssl=openssl
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tntnet/
	${INSTALL_DATA} ${WRKSRC}/doc/*.pdf ${PREFIX}/share/doc/tntnet/
	${INSTALL_DATA_DIR} ${PREFIX}/share/tntnet/
	${INSTALL_DATA} ${WRKSRC}/ecpp.vim ${PREFIX}/share/tntnet/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tntnet/
.for e in mime.conf tntnet.conf tntnet.properties
	${INSTALL_DATA} ${WRKSRC}/etc/tntnet/$e ${PREFIX}/share/examples/tntnet/
.endfor

.include <bsd.port.mk>
