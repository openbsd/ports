# $OpenBSD: Makefile,v 1.1.1.1 2006/07/20 09:23:13 espie Exp $

HOMEPAGE=		http://www.cmake.org/
CATEGORIES=		devel
COMMENT=		portable build system
DISTNAME=		cmake-2.4.2
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
CONFIGURE_ARGS=		--prefix=${LOCALBASE} --docdir=/share/doc/CMake



LIB_DEPENDS=		curl::net/curl \
			expat::textproc/expat

WANTLIB=	m curses c stdc++ z

# Add these if you need to figure out what's going on.
#CONFIGURE_ARGS+=	--verbose
#MAKE_FLAGS=	VERBOSE=1

REGRESS_TARGET=	test
# For the registry test to work
pre-regress:
	mkdir -p ${WRKDIR}/registryhome
REGRESS_FLAGS=HOME=${WRKDIR}/registryhome

.include <bsd.port.mk>
