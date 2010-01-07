# $OpenBSD: Makefile,v 1.32 2010/01/07 10:55:28 edd Exp $

ONLY_FOR_ARCHS=		amd64 i386

COMMENT=		ANSI Common Lisp compiler

DISTNAME=		clisp-2.48
CATEGORIES=		lang
HOMEPAGE=		http://clisp.cons.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext

LIB_DEPENDS=		sigsegv::devel/libsigsegv \
			avcall,callback::devel/ffcall
WANTLIB=		c m ncurses readline

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=clisp/}
EXTRACT_SUFX=		.tar.bz2

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

SEPARATE_BUILD=		simple

CONFIGURE_STYLE=	gnu old
CONFIGURE_ARGS=		--fsstnd=openbsd \
			--with-gmalloc \
			--with-gettext \
			--mandir=${PREFIX}/man \
			--docdir=${PREFIX}/share/doc/clisp \
			--elispdir=${PREFIX}/share/doc/clisp \
			--vimdir=${PREFIX}/share/doc/clisp \
			--srcdir=${WRKSRC} ${WRKBUILD}

.if ${MACHINE_ARCH} == "amd64"
CONFIGURE_ARGS+=	--disable-mmap
.endif

.include <bsd.port.mk>
