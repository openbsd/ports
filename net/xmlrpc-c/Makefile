# $OpenBSD: Makefile,v 1.1.1.1 2006/12/18 14:39:56 espie Exp $

COMMENT=	"XML-RPC C/C++ client-server implementation"
CATEGORIES=	net devel textproc

DISTNAME=	xmlrpc-c-1.06.08
EXTRACT_SUFX=	.tgz
SHARED_LIBS +=	xmlrpc_util          0.0      # .9.4
SHARED_LIBS +=	xmlrpc_abyss         0.0      # .9.4
SHARED_LIBS +=	xmlrpc_xmlparse      0.0      # .9.4
SHARED_LIBS +=	xmlrpc_xmltok        0.0      # .9.4
SHARED_LIBS +=	xmlrpc               0.0      # .9.4
SHARED_LIBS +=	xmlrpc_server        0.0      # .9.4
SHARED_LIBS +=	xmlrpc_server_abyss  0.0      # .9.4
SHARED_LIBS +=	xmlrpc_client        0.0      # .9.4
SHARED_LIBS +=	xmlrpc_server_cgi    0.0      # .9.4

HOMEPAGE=	http://xmlrpc-c.sourceforge.net/

WANTLIB += c crypto pthread ssl z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xmlrpc-c/}

# BSD
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS=		curl::net/curl

CONFIGURE_STYLE=	gnu
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

post-extract:
	rm ${WRKSRC}/src/cpp/test/srcdir

# we don't have libwww for now, this guards against picking it up
# if somebody ports it
CONFIGURE_ARGS+=		--disable-libwww-client

# flavor ?
CONFIGURE_ARGS+=		--disable-libxml2-backend

MAKE_FILE=		${WRKBUILD}/GNUmakefile

.include <bsd.port.mk>
