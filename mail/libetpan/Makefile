# $OpenBSD: Makefile,v 1.1.1.1 2007/03/23 17:32:58 deanna Exp $

COMMENT=	"mail purpose library"

DISTNAME=	libetpan-0.49
CATEGORIES=	mail devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libetpan/}
SHARED_LIBS=	etpan	11.0

HOMEPAGE=	http://libetpan.sourceforge.net/

MAINTAINER=	Ulrich Kahl <ulrich.kahl@cityweb.de>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	converters/libiconv

WANTLIB=	ssl crypto

LIB_DEPENDS+=	sasl2::security/cyrus-sasl2

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --without-gnutls
CONFIGURE_ARGS+= --with-sasl=${LOCALBASE}
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME:S/.1//}

DOCS=	API.html API.txt DOCUMENTATION README.html README.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libetpan
.for d in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/doc/${d} ${PREFIX}/share/doc/libetpan/${d}
.endfor

.include <bsd.port.mk>
