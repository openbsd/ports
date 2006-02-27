# $OpenBSD: Makefile,v 1.26 2006/02/27 17:22:09 pvalchev Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"ANSI Common Lisp compiler"

DISTNAME=	clisp-2.33.2
PKGNAME=	${DISTNAME}p1
CATEGORIES=	lang
HOMEPAGE=	http://clisp.cons.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c ncurses readline

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=clisp/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext

CONFIGURE_STYLE=gnu old
CONFIGURE_ARGS=	--srcdir=${WRKSRC} ${WRKBUILD}
SEPARATE_BUILD=	simple
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/src/autoconf \
				${WRKSRC}/ffcall/autoconf \
				${WRKSRC}/libcharset/autoconf

MAKE_FLAGS=	INSTALL='install -c' \
		INSTALL_PROGRAM='install -c -s -m 555' \
		INSTALL_DATA='install -c -m 644'

post-configure:
	@cd ${WRKBUILD} && \
	    ./makemake --fsstnd=openbsd --prefix=${PREFIX} \
		--with-dynamic-ffi >Makefile && \
	make config.lisp

.include <bsd.port.mk>
