# $OpenBSD: Makefile,v 1.6 2008/11/11 22:46:30 simon Exp $

# sparc64 fails to build
# others untested
ONLY_FOR_ARCHS=	i386 amd64 macppc

COMMENT=	virtual machine designed for interpreted languages
VMEM_WARNING=	Yes

SHARED_ONLY=	Yes

DISTNAME=	parrot-0.8.0
CATEGORIES=	lang perl6

HOMEPAGE=	http://www.parrotcode.org/

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../by-authors/id/P/PA/PARTICLE/}

# Artistic2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m pthread util

LIB_DEPENDS=		icudata,icuuc::textproc/icu4c
REGRESS_DEPENDS=	::devel/p5-Test-Pod

CONFIGURE_SCRIPT=	/usr/bin/perl Configure.pl
CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--parrot_is_shared 
CONFIGURE_ARGS+=	--icu-config=${LOCALBASE}/bin/icu-config

ALL_TARGET=		installable ./perl6 compilers languages
INSTALL_TARGET=		reallyinstall
REGRESS_TARGET=		test

.if ${MACHINE_ARCH} == "i386"
PKG_ARGS+=		-Di386=1
.else
PKG_ARGS+=		-Di386=0
.endif

.if ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS+=	--execcapable=0
.endif

pre-configure:
	cd ${WRKSRC} && cp src/jit/ppc/ppc-linux.s src/jit/ppc/ppc-openbsd.s

.include <bsd.port.mk>
