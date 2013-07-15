# $OpenBSD: Makefile,v 1.23 2013/07/15 19:01:56 miod Exp $

COMMENT=		Foreign Function Interface

DISTNAME=		libffi-3.0.9
REVISION=		5
SHARED_LIBS +=  ffi                  0.0      # .5.9
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		http://sources.redhat.com/libffi/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		ftp://sourceware.org/pub/libffi/

TEST_DEPENDS=		devel/dejagnu

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

FAKE_FLAGS+=		includesdir="${PREFIX}/include"

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
