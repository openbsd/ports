# $OpenBSD: Makefile,v 1.17 2009/09/10 13:54:47 landry Exp $

HOMEPAGE=		http://www.cmake.org/
CATEGORIES=		devel
COMMENT=		portable build system
DISTNAME=		cmake-2.4.8
PKGNAME=		${DISTNAME}p2
MASTER_SITES=		${HOMEPAGE}files/v2.4/
MAINTAINER=		Marc Espie <espie@openbsd.org>


# BSD
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	${WRKSRC}/bootstrap
SEPARATE_BUILD=		simple
CONFIGURE_ENV=		LOCALBASE=${LOCALBASE} X11BASE=${X11BASE} MAKE=make
CONFIGURE_ARGS=		--prefix=${LOCALBASE} --docdir=/share/doc/CMake \
			--datadir=/share/CMake --system-libs



LIB_DEPENDS=		curl::net/curl \
			xmlrpc,xmlrpc_client,xmlrpc_util,xmlrpc_xmlparse,xmlrpc_xmltok::net/xmlrpc-c 

WANTLIB=	expat m curses c stdc++ z crypto pthread ssl idn

# Add these if you need to figure out what's going on.
#CONFIGURE_ARGS+=	--verbose
#MAKE_FLAGS=	VERBOSE=1

REGRESS_TARGET=	test
# For the registry test to work
pre-regress:
	mkdir -p ${WRKDIR}/registryhome
REGRESS_FLAGS=HOME=${WRKDIR}/registryhome

.include <bsd.port.mk>
