# $OpenBSD: Makefile,v 1.1.1.1 2000/11/18 13:43:27 naddy Exp $
# $FreeBSD: ports/lang/clisp/Makefile,v 1.4 2000/05/14 05:40:46 billf Exp $

DISTNAME=	clisp-2000-03-06
PKGNAME=	clisp-20000306
CATEGORIES=	lang
NEED_VERSION=	1.338
HOMEPAGE=	http://clisp.cons.org/
MASTER_SITES=	ftp://clisp.cons.org/pub/lisp/clisp/source/ \
		ftp://ftp.freesoftware.com/pub/lisp/clisp/source/

MAINTAINER=	Justin R. Smith <jsmith@mcs.drexel.edu>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu old
CONFIGURE_ARGS=	--srcdir=${WRKSRC} ${WRKBUILD}
SEPARATE_BUILD=	concurrent

# The source doesn't include a top-level Makefile, so we'll fake one.
post-extract:
	printf "all install:\n\t@cd ${WRKBUILD} && \$${MAKE} \$${MAKEFLAGS} \$$@\n" >${WRKSRC}/Makefile

post-configure:
	cd ${WRKBUILD} && \
	    env WRKINST=${WRKINST} ./makemake --fsstnd=bsd \
		--prefix=${PREFIX} --with-readline --with-gettext \
		--with-dynamic-ffi >Makefile && \
    	    make config.lsp

.include <bsd.port.mk>
