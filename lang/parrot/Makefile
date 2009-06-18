# $OpenBSD: Makefile,v 1.9 2009/06/18 23:00:43 simon Exp $

# sparc64 failed to build with 0.9.0.1 and needs testing
# macppc fails too and is therefore disabled
# others untested
ONLY_FOR_ARCHS=	i386 amd64

COMMENT=	virtual machine designed for interpreted languages

V=		1.2.0
DISTNAME=	parrot-$V
CATEGORIES=	lang perl6
SHARED_LIBS=	parrot	0.0

HOMEPAGE=	http://www.parrotcode.org/

MASTER_SITES=	ftp://ftp.parrot.org/pub/parrot/releases/devel/$V/

# Artistic2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto m ncurses pthread readline stdc++ util

LIB_DEPENDS=		icudata,icuuc,icui18n::textproc/icu4c
REGRESS_DEPENDS=	::devel/p5-Test-Pod

CONFIGURE_SCRIPT=	/usr/bin/perl Configure.pl
CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--prefix=${PREFIX}
CONFIGURE_ARGS+=	--parrot_is_shared 
CONFIGURE_ARGS+=	--icuheaders=${LOCALBASE}/include
CONFIGURE_ARGS+=	--icushared="`${LOCALBASE}/bin/icu-config --ldflags`"

MAKE_FLAGS=		LIBparrot_VERSION=${LIBparrot_VERSION}

ALL_TARGET=		installable compilers
REGRESS_TARGET=		test

.if ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS+=	--execcapable=0
.endif

pre-configure:
	cd ${WRKSRC} && cp src/jit/ppc/ppc-linux.s src/jit/ppc/ppc-openbsd.s
	perl -pi -e 's!^(SOVERSION\s*:=\s*).*?$$!$${1}${LIBparrot_VERSION}!' \
	    ${WRKSRC}/config/gen/makefiles/root.in

post-install:
	${INSTALL_DATA} ${WRKSRC}/blib/lib/libparrot.so.0.0 ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/parrot
	cd ${WRKSRC}/examples && pax -rw . ${PREFIX}/share/examples/parrot

.include <bsd.port.mk>
