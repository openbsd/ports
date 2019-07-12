# $OpenBSD: Makefile,v 1.21 2019/07/12 20:48:52 sthen Exp $

# as error: ``operation combines symbols in different segments''
# (known toolchain problem)
NOT_FOR_ARCHS=	m88k

COMMENT=	XML-RPC C/C++ client-server implementation
CATEGORIES=	net devel textproc

V=		1.39.13
DISTNAME=	xmlrpc-c-${V}
FIX_EXTRACT_PERMISSIONS=Yes

EXTRACT_SUFX=	.tgz

.for i in xmlrpc_util xmlrpc_abyss xmlrpc_xmlparse xmlrpc_xmltok	\
	 xmlrpc xmlrpc_server xmlrpc_server_abyss xmlrpc_client		\
	 xmlrpc_server_cgi xmlrpc_util++ xmlrpc_abyss++			\
	 xmlrpc_xmlparse++ xmlrpc_xmltok++ xmlrpc++ xmlrpc_server++	\
	 xmlrpc_server_abyss++ xmlrpc_server_pstream++ xmlrpc_client++	\
	 xmlrpc_server_cgi++ xmlrpc_cpp xmlrpc_packetsocket
SHARED_LIBS += $i 2.0
.endfor

HOMEPAGE=	http://xmlrpc-c.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xmlrpc-c/}

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} crypto curl m nghttp2 ssl z

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=		net/curl

CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes

MAKE_ENV=		COPTS="${CFLAGS}" \
			LIB_MAJ=${LIBxmlrpc_VERSION:R} \
			LIB_MIN=${LIBxmlrpc_VERSION:E}

# we don't have libwww for now, this guards against picking it up
# if somebody ports it
CONFIGURE_ARGS+=	--disable-libwww-client

# flavor ?
CONFIGURE_ARGS+=	--disable-libxml2-backend

MAKE_FILE=	GNUmakefile

# XXX known failure for "make test" fails if anything is bound to port 8080

.include <bsd.port.mk>
