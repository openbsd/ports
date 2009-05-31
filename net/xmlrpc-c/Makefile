# $OpenBSD: Makefile,v 1.7 2009/05/31 15:54:18 benoit Exp $

COMMENT=	XML-RPC C/C++ client-server implementation
CATEGORIES=	net devel textproc

V=		1.06.35
DISTNAME=	xmlrpc-c-${V}

EXTRACT_SUFX=	.tgz

SHARED_LIBS +=	xmlrpc_util          1.0      # .9.15
SHARED_LIBS +=	xmlrpc_abyss         1.0      # .9.15
SHARED_LIBS +=	xmlrpc_xmlparse      1.0      # .9.15
SHARED_LIBS +=	xmlrpc_xmltok        1.0      # .9.15
SHARED_LIBS +=	xmlrpc               1.0      # .9.15
SHARED_LIBS +=	xmlrpc_server        1.0      # .9.15
SHARED_LIBS +=	xmlrpc_server_abyss  1.0      # .9.15
SHARED_LIBS +=	xmlrpc_client        1.0      # .9.15
SHARED_LIBS +=	xmlrpc_server_cgi    1.0      # .9.15

HOMEPAGE=	http://xmlrpc-c.sourceforge.net/

WANTLIB=	c crypto idn pthread ssl z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xmlrpc-c/}

# BSD
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext

LIB_DEPENDS=		curl::net/curl

CONFIGURE_STYLE=	gnu
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

MAKE_ENV=		COPTS="${CFLAGS}"

# we don't have libwww for now, this guards against picking it up
# if somebody ports it
CONFIGURE_ARGS+=	--disable-libwww-client

# flavor ?
CONFIGURE_ARGS+=	--disable-libxml2-backend

MAKE_FILE=	GNUmakefile

.include <bsd.port.mk>
