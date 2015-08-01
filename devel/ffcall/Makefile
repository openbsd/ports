# $OpenBSD: Makefile,v 1.27 2015/08/01 12:07:46 tobiasu Exp $

# arm: doesn't build super-old and broken assember files
ONLY_FOR_ARCHS=	alpha amd64 hppa i386 mips64 mips64el powerpc sparc sparc64

COMMENT=	foreign function call libraries

DISTNAME=	ffcall-1.10
REVISION =	3
SHARED_LIBS=	avcall		1.0 \
		callback	1.0
CATEGORIES=	devel
MASTER_SITES=	http://www.haible.de/bruno/gnu/
HOMEPAGE=	http://www.haible.de/bruno/packages-ffcall.html

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autoconf

.if ${MACHINE_ARCH} == "sparc"
CONFIGURE_ENV +=	cl_cv_c_struct_return_small=no
.elif ${MACHINE_ARCH} == "sparc64"
CONFIGURE_ENV +=	cl_cv_c_struct_return_small=yes
.endif

FAKE_FLAGS=	htmldir="\$$(datadir)/doc/ffcall/html"

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ffcall/html

.include <bsd.port.mk>
