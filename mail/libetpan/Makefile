# $OpenBSD: Makefile,v 1.13 2013/03/11 11:23:51 espie Exp $

COMMENT=	mail purpose library

DISTNAME=	libetpan-1.0
REVISION=	1
CATEGORIES=	mail devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libetpan/}

SHARED_LIBS=	etpan	14.0

HOMEPAGE=	http://libetpan.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext

WANTLIB=	crypto expat m ssl stdc++ z curl idn sasl2

LIB_DEPENDS+=	net/curl \
		devel/libidn \
		security/cyrus-sasl2

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --without-gnutls --with-sasl=${LOCALBASE}
CONFIGURE_ENV+= CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libetpan/html/{API,README}
	${INSTALL_DATA} ${WRKSRC}/{COPYRIGHT,doc/{DOCUMENTATION,{API,README}.txt}} ${PREFIX}/share/doc/libetpan
.       for d in API README
	  ${INSTALL_DATA} ${WRKSRC}/doc/${d}.html ${PREFIX}/share/doc/libetpan/html
	  cd ${WRKSRC}/doc/${d};\
	  find * -exec ${INSTALL_DATA} {} ${PREFIX}/share/doc/libetpan/html/${d}/{} \;
.	endfor

.include <bsd.port.mk>
