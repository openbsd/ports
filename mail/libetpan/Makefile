# $OpenBSD: Makefile,v 1.8 2010/06/14 19:52:23 kili Exp $

COMMENT=	mail purpose library

DISTNAME=	libetpan-1.0
CATEGORIES=	mail devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libetpan/}

SHARED_LIBS=	etpan	14.0

HOMEPAGE=	http://libetpan.sourceforge.net/

MAINTAINER=	Ulrich Kahl <ulrich.kahl@cityweb.de>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	converters/libiconv

WANTLIB=	crypto expat intl m ssl stdc++ z

LIB_DEPENDS+=	curl::net/curl \
		idn::devel/libidn \
		sasl2::security/cyrus-sasl2

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --without-gnutls --with-sasl=${LOCALBASE}
CONFIGURE_ENV+= CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libetpan/html/{API,README}
	${INSTALL_DATA} ${WRKSRC}/{COPYRIGHT,doc/{DOCUMENTATION,{API,README}.txt}} ${PREFIX}/share/doc/libetpan
.       for d in API README
	  ${INSTALL_DATA} ${WRKSRC}/doc/${d}.html ${PREFIX}/share/doc/libetpan/html
	  cd ${WRKSRC}/doc/${d};\
	  find * -exec ${INSTALL_DATA} {} ${PREFIX}/share/doc/libetpan/html/${d}/{} \;
.	endfor

.include <bsd.port.mk>
