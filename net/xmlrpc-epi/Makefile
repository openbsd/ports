# $OpenBSD: Makefile,v 1.7 2010/07/12 22:07:42 sthen Exp $

COMMENT=	XML-RPC C/C++ client-server implementation
CATEGORIES=	net devel textproc

DISTNAME=	xmlrpc-epi-0.51
REVISION=	1
SHARED_LIBS +=	xmlrpc-epi	0.3

HOMEPAGE=	http://xmlrpc-epi.sourceforge.net/

WANTLIB += c expat iconv

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xmlrpc-epi/}

# BSD
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS +=	::devel/gettext
RUN_DEPENDS +=		::devel/gettext

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
