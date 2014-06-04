# $OpenBSD: Makefile,v 1.27 2014/06/04 17:40:27 jasper Exp $

COMMENT=		Foreign Function Interface

DISTNAME=		libffi-3.0.13
SHARED_LIBS +=  ffi                  1.0      # .6.1
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		http://sourceware.org/libffi/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		ftp://sourceware.org/pub/libffi/

TEST_DEPENDS=		devel/dejagnu

AUTOCONF_VERSION=       2.68
AUTOMAKE_VERSION=       1.14

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
	# Force a regen of missing
	rm ${WRKSRC}/missing
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake --add-missing

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
