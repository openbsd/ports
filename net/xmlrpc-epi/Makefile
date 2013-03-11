# $OpenBSD: Makefile,v 1.12 2013/03/11 11:35:58 espie Exp $

COMMENT=	XML-RPC C/C++ client-server implementation
CATEGORIES=	net devel textproc

DISTNAME=	xmlrpc-epi-0.51
REVISION=	2
SHARED_LIBS +=	xmlrpc-epi	0.3

HOMEPAGE=	http://xmlrpc-epi.sourceforge.net/

WANTLIB += c expat

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xmlrpc-epi/}

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		converters/libiconv

BUILD_DEPENDS +=	devel/gettext
RUN_DEPENDS +=		devel/gettext

CONFIGURE_STYLE=	autoconf
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

CONFIGURE_ENV+= 	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -liconv"

CONFIGURE_ARGS+=	--includedir=${LOCALBASE}/include/xmlrpc-epi

post-extract:
	rm -rf ${WRKSRC}/expat

.include <bsd.port.mk>
