# $OpenBSD: Makefile,v 1.4 2007/07/11 11:05:38 aanriot Exp $

COMMENT=	"XML-RPC C/C++ client-server implementation"
CATEGORIES=	net devel textproc

DISTNAME=	xmlrpc-epi-0.51
PKGNAME=	${DISTNAME}p1
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
USE_X11=		Yes

CONFIGURE_ENV+= 	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -liconv"

CONFIGURE_ARGS+=	--includedir=${LOCALBASE}/include/xmlrpc-epi

post-extract:
	rm -rf ${WRKSRC}/expat

.include <bsd.port.mk>
