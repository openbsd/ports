# $OpenBSD: Makefile,v 1.17 2019/05/20 22:15:20 naddy Exp $

COMMENT=	XML-RPC C/C++ client-server implementation
CATEGORIES=	net devel textproc

DISTNAME=	xmlrpc-epi-0.54.1
REVISION=	0
SHARED_LIBS +=	xmlrpc-epi	0.3

HOMEPAGE=	http://xmlrpc-epi.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xmlrpc-epi/}

# BSD
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS=		converters/libiconv

WANTLIB += c expat iconv

BUILD_DEPENDS +=	devel/gettext,-runtime
RUN_DEPENDS +=		devel/gettext,-runtime

CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes

CONFIGURE_ENV+= 	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv"

CONFIGURE_ARGS+=	--includedir=${LOCALBASE}/include/xmlrpc-epi

WRKDIST =		${WRKDIR}/xmlrpc

.include <bsd.port.mk>
