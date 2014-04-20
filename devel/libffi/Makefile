# $OpenBSD: Makefile,v 1.26 2014/04/20 16:44:30 jasper Exp $

COMMENT=		Foreign Function Interface

DISTNAME=		libffi-3.0.9
REVISION=		6
SHARED_LIBS +=  ffi                  0.0      # .5.9
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		http://sources.redhat.com/libffi/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		ftp://sourceware.org/pub/libffi/

TEST_DEPENDS=		devel/dejagnu

AUTOCONF_VERSION=       2.63
AUTOMAKE_VERSION=       1.11

BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

FAKE_FLAGS+=		includesdir="${PREFIX}/include"

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoconf
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake

post-patch:
	@mkdir ${WRKSRC}/src/m88k
	@cp ${FILESDIR}/m88k_ffi.c ${WRKSRC}/src/m88k/ffi.c
	@cp ${FILESDIR}/m88k_ffitarget.h ${WRKSRC}/src/m88k/ffitarget.h
	@cp ${FILESDIR}/m88k_obsd.S ${WRKSRC}/src/m88k/obsd.S
	@mkdir ${WRKSRC}/src/vax
	@cp ${FILESDIR}/vax_ffi.c ${WRKSRC}/src/vax/ffi.c
	@cp ${FILESDIR}/vax_ffitarget.h ${WRKSRC}/src/vax/ffitarget.h
	@cp ${FILESDIR}/vax_elfbsd.S ${WRKSRC}/src/vax/elfbsd.S

.include <bsd.port.mk>
