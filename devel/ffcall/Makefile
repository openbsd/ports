# $OpenBSD: Makefile,v 1.17 2010/09/23 13:38:33 joshe Exp $
# $FreeBSD: ports/devel/ffcall/Makefile,v 1.2 2001/08/31 14:20:18 sobomax Exp $
# Original From:                jagapen@home.com

# m68k: mmap configure test causes system hang
# arm: doesn't build super-old and broken assember files
ONLY_FOR_ARCH=	alpha amd64 hppa i386 mips64 mips64el powerpc sparc sparc64

COMMENT=	foreign function call libraries

DISTNAME=	ffcall-1.10
REVISION =	1
SHARED_LIBS=	avcall		1.0 \
		callback	1.0
CATEGORIES=	devel
MASTER_SITES=	http://www.haible.de/bruno/gnu/ \
		ftp://ftp.ilog.fr/pub/Users/haible/gnu/
HOMEPAGE=	http://www.haible.de/bruno/packages-ffcall.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

USE_LIBTOOL=	Yes
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
