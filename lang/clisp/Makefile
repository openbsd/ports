# $OpenBSD: Makefile,v 1.16 2003/06/26 21:51:22 pvalchev Exp $
# $FreeBSD: ports/lang/clisp/Makefile,v 1.4 2000/05/14 05:40:46 billf Exp $

NOT_FOR_ARCHS=	powerpc sparc sparc64 vax
# XXX This will panic any m68k
NOT_FOR_ARCHS+=	m68k

COMMENT=	"ANSI Common Lisp compiler"

VERSION=	2.27
DISTNAME=	clisp-${VERSION}
CATEGORIES=	lang
HOMEPAGE=	http://clisp.cons.org/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=clisp/} \
		ftp://clisp.cons.org/pub/lisp/clisp/source/${VERSION}/

EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE= gnu old
CONFIGURE_ARGS=	--srcdir=${WRKSRC} ${WRKBUILD}
SEPARATE_BUILD=	concurrent

MAKE_FLAGS= INSTALL='install -c' \
	    INSTALL_PROGRAM='install -c -s -m 555' \
	    INSTALL_DATA='install -c -m 644'

post-configure:
	@cd ${WRKBUILD} && \
	    ./makemake --fsstnd=openbsd --prefix=${PREFIX} --with-readline \
		--with-gettext --with-dynamic-ffi >Makefile && \
    	    make config.lisp

.include <bsd.port.mk>
