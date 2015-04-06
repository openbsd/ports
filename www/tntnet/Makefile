# $OpenBSD: Makefile,v 1.17 2015/04/06 16:05:03 schwarze Exp $

COMMENT=		modular webapplication server for C++

DISTNAME=		tntnet-1.6.2
REVISION=		3
CATEGORIES=		www devel

HOMEPAGE=		http://www.tntnet.org/

MAINTAINER=		Vijay Ramesh <vramesh2@uiuc.edu>

SO_VERSION=	1.0
.for _lib in alldemos calc calcajax calci18n calcmvc chat comp config controls \
cookie extlib hello savepoint session sprintf strings tntnet tntnet_cgi \
tntnet_sdk upload
SHARED_LIBS+=	${_lib}	${SO_VERSION}
.endfor

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto cxxtools>=2 m pthread ssl stdc++ z

MASTER_SITES=		${HOMEPAGE}download/

MODULES=		converters/libiconv

BUILD_DEPENDS=		archivers/zip
LIB_DEPENDS= 		devel/cxxtools

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
