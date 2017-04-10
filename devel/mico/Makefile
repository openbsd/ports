# $OpenBSD: Makefile,v 1.23 2017/04/10 11:45:26 sthen Exp $

COMMENT=	free and complete CORBA-compliant implementation

V=		2.3.13
DISTNAME=	mico-${V}
CATEGORIES=	devel
REVISION=	1

# The build framework accommodates only a single shared lib extension.
SHARED_LIBS=	mico${V}	${LIB_VERSION} \
		micoaux${V}	${LIB_VERSION} \
		micocoss${V}	${LIB_VERSION} \
		micoir${V}	${LIB_VERSION} \
		micox${V}	${LIB_VERSION}
LIB_VERSION=	0.0

HOMEPAGE=	http://www.mico.org/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mico/}

# LGPL/GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m ncurses readline ${LIBCXX}
WANTLIB+=		crypto ssl ICE SM X11 Xt pthread

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LIB_VERSION=${LIB_VERSION}
CONFIGURE_ARGS+=	--disable-optimize
CONFIGURE_ARGS+=	--with-ssl

SUBST_VARS+=		V
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin

FAKE_FLAGS=		INSTDIR=${WRKINST}${PREFIX} \
			SHARED_INSTDIR=${DESTDIR}${PREFIX}/share

WRKDIST=		${WRKDIR}/mico

# in case we can't resolve ourselves, don't use the network to make a DNS lookup
MAKE_ENV=		MICORC=${WRKSRC}/openbsd-ports.rc

pre-build:
	echo '-ORBIIOPAddr inet:127.0.0.1:0 -ORBNoResolve' \
		>${WRKSRC}/openbsd-ports.rc
	cd ${WRKSRC}/idl && ${GMAKE} generate

pre-test:
	cd ${WRKSRC}/test && ${GMAKE} prg

.include <bsd.port.mk>
