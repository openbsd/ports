# $OpenBSD: Makefile,v 1.2 2007/02/08 19:00:17 todd Exp $

COMMENT=	"XML-RPC C/C++ client-server implementation"
CATEGORIES=	net devel textproc

DISTNAME=	xmlrpc-epi-0.51
PKGNAME=	${DISTNAME}p0
SHARED_LIBS +=	xmlrpc-epi	0.3

HOMEPAGE=	http://xmlrpc-epi.sourceforge.net/

WANTLIB += c expat

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xmlrpc-epi/}

# BSD
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS=		iconv::devel/gettext

CONFIGURE_STYLE=	gnu autoconf
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

CONFIGURE_ENV+= 	CPPFLAGS="-I${PREFIX}/include" CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"
CFLAGS+=		-I${PREFIX}/include

LDFLAGS=		-L${PREFIX}/lib -liconv

CONFIGURE_ARGS+=	--includedir=${LOCALBASE}/include/xmlrpc-epi

post-extract:
	rm -rf ${WRKSRC}/expat

.include <bsd.port.mk>
