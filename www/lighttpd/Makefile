# $OpenBSD: Makefile,v 1.17 2005/10/03 00:53:50 brad Exp $

SHARED_ONLY=	Yes

COMMENT=	"secure, fast, compliant, and very flexible web-server"

DISTNAME=	lighttpd-1.4.5
CATEGORIES=	www net

MAINTAINER=	Brad Smith <brad@openbsd.org>

HOMEPAGE=	http://www.lighttpd.net/

LIB_DEPENDS+=	bz2::archivers/bzip2 \
		pcre::devel/pcre

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c z 

MASTER_SITES=	${HOMEPAGE}download/

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --without-openssl \
		 --libdir="${PREFIX}/lib/lighttpd"
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lighttpd
	${INSTALL_DATA} ${WRKSRC}/doc/lighttpd.conf \
		${PREFIX}/share/examples/lighttpd

post-configure:
	@perl -pi -e "s,/usr/bin/rrdtool,${LOCALBASE}/bin/rrdtool," \
		${WRKSRC}/doc/lighttpd.conf

.include <bsd.port.mk>
