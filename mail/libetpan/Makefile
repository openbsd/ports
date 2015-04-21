# $OpenBSD: Makefile,v 1.16 2015/04/21 18:24:22 sthen Exp $

COMMENT=	mail purpose library

DISTNAME=	libetpan-1.0
REVISION=	3
CATEGORIES=	mail devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libetpan/}

SHARED_LIBS=	etpan	14.0

HOMEPAGE=	http://libetpan.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto curl expat idn m pthread sasl2 ssl stdc++ z

MODULES=	devel/gettext


LIB_DEPENDS+=	net/curl \
		devel/libidn \
		security/cyrus-sasl2

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
