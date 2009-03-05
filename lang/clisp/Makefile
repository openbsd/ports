# $OpenBSD: Makefile,v 1.31 2009/03/05 23:44:38 martynas Exp $

ONLY_FOR_ARCHS= amd64 i386

COMMENT=	ANSI Common Lisp compiler

DISTNAME=	clisp-2.43
PKGNAME=	${DISTNAME}p1
CATEGORIES=	lang
HOMEPAGE=	http://clisp.cons.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext

LIB_DEPENDS=	sigsegv::devel/libsigsegv
WANTLIB=	c m ncurses readline

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=clisp/}
EXTRACT_SUFX=	.tar.bz2

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu old
CONFIGURE_ARGS= --with-gmalloc \
		--srcdir=${WRKSRC} ${WRKBUILD}
MAKEMAKE_ARGS=	--fsstnd=openbsd \
		--prefix=${PREFIX} \
		--with-dynamic-ffi \
		--with-gmalloc \
		--mandir=${PREFIX}/man \
		--vimdir=${PREFIX}/share/doc/clisp \
		--docdir=${PREFIX}/share/doc/clisp
.if ${MACHINE_ARCH} == "amd64"
MAKEMAKE_ARGS+=	--disable-mmap
.endif
SEPARATE_BUILD=	simple
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/ffcall/autoconf
USE_GMAKE=	Yes
MAKE_FLAGS=	INSTALL='install -c' \
		INSTALL_PROGRAM='install -c -s -m 555' \
		INSTALL_DATA='install -c -m 644'


post-configure:
	@cd ${WRKBUILD} && ./makemake ${MAKEMAKE_ARGS} >Makefile && \
	make config.lisp

.include <bsd.port.mk>
