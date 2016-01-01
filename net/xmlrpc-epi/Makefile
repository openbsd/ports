# $OpenBSD: Makefile,v 1.15 2016/01/01 13:04:43 jasper Exp $

COMMENT=	XML-RPC C/C++ client-server implementation
CATEGORIES=	net devel textproc

DISTNAME=	xmlrpc-epi-0.54.1
SHARED_LIBS +=	xmlrpc-epi	0.3

HOMEPAGE=	http://xmlrpc-epi.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xmlrpc-epi/}

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		converters/libiconv

WANTLIB += c expat

BUILD_DEPENDS +=	devel/gettext
RUN_DEPENDS +=		devel/gettext

CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes

CONFIGURE_ENV+= 	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv"

CONFIGURE_ARGS+=	--includedir=${LOCALBASE}/include/xmlrpc-epi

WRKDIST =		${WRKDIR}/xmlrpc

.include <bsd.port.mk>
