# $OpenBSD: Makefile,v 1.28 2007/11/24 23:52:55 jasper Exp $

ONLY_FOR_ARCHS= i386

COMMENT=	ANSI Common Lisp compiler

DISTNAME=	clisp-2.42
CATEGORIES=	lang
HOMEPAGE=	http://clisp.cons.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	sigsegv::devel/libsigsegv
WANTLIB=	c m ncurses readline

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=clisp/}
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE=gnu old
CONFIGURE_ARGS= --with-gmalloc \
		--srcdir=${WRKSRC} ${WRKBUILD}
SEPARATE_BUILD=	simple
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/src/autoconf \
				${WRKSRC}/ffcall/autoconf \
				${WRKSRC}/libcharset/autoconf

MAKE_FLAGS=	INSTALL='install -c' \
		INSTALL_PROGRAM='install -c -s -m 555' \
		INSTALL_DATA='install -c -m 644'

post-configure:
	@cd ${WRKBUILD} && ./makemake \
		--fsstnd=openbsd \
		--prefix=${PREFIX} \
		--with-dynamic-ffi \
		--with-gmalloc \
		--mandir=${PREFIX}/man \
		--vimdir=${PREFIX}/share/doc/clisp >Makefile && \
	make config.lisp

.include <bsd.port.mk>
