# $OpenBSD: Makefile,v 1.5 2001/03/31 11:51:05 naddy Exp $
# $FreeBSD: ports/lang/clisp/Makefile,v 1.4 2000/05/14 05:40:46 billf Exp $

NOT_FOR_ARCHS=	powerpc sparc

COMMENT=	'ANSI Common Lisp compiler'

DISTNAME=	clisp-2.25
CATEGORIES=	lang
NEED_VERSION=	1.378
HOMEPAGE=	http://clisp.cons.org/

MAINTAINER=	Shell Hung <i@shellhung.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://clisp.cons.org/pub/lisp/clisp/source/ \
		ftp://ftp.freesoftware.com/pub/lisp/clisp/source/
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
