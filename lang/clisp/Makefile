# $OpenBSD: Makefile,v 1.33 2010/08/23 16:31:33 jasper Exp $

ONLY_FOR_ARCHS =	amd64 i386 powerpc

COMMENT =		ANSI Common Lisp implementation

DISTNAME=		clisp-2.48
REVISION =		0
CATEGORIES=		lang
HOMEPAGE=		http://clisp.cons.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext

LIB_DEPENDS =		::devel/libsigsegv \
			::devel/ffcall
WANTLIB =		avcall c callback m ncurses readline sigsegv

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=clisp/}
EXTRACT_SUFX=		.tar.bz2

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

SEPARATE_BUILD=		simple

CONFIGURE_STYLE=	gnu old
CONFIGURE_ARGS=		--fsstnd=openbsd \
			--with-gmalloc \
			--disable-mmap \
			--with-gettext \
			--mandir=${PREFIX}/man \
			--docdir=${PREFIX}/share/doc/clisp \
			--elispdir=${PREFIX}/share/emacs/site-lisp \
			--vimdir=${PREFIX}/share/doc/clisp \
			--srcdir=${WRKSRC} ${WRKBUILD}
CONFIGURE_ENV =		ac_cv_prog_DVIPDF=''

.include <bsd.port.mk>
