# $OpenBSD: Makefile,v 1.6 2004/12/12 01:39:30 brad Exp $

SHARED_ONLY=	Yes

COMMENT=	"secure, fast, compliant, and very flexible web-server"

DISTNAME=	lighttpd-1.3.7
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
WANTLIB=		c crypto ssl z 

MASTER_SITES=	${HOMEPAGE}download/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-openssl
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lighttpd
	${INSTALL_DATA} ${WRKSRC}/doc/lighttpd.conf \
		${PREFIX}/share/examples/lighttpd

.include <bsd.port.mk>
