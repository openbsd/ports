# $OpenBSD: Makefile,v 1.17 2004/01/20 23:15:19 naddy Exp $

NOT_FOR_ARCHS=	alpha powerpc sparc sparc64 vax
# XXX This will panic any m68k
NOT_FOR_ARCHS+=	m68k

COMMENT=	"ANSI Common Lisp compiler"

DISTNAME=	clisp-2.32
CATEGORIES=	lang
HOMEPAGE=	http://clisp.cons.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=clisp/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	gettext

CONFIGURE_STYLE=gnu old
CONFIGURE_ARGS=	--srcdir=${WRKSRC} ${WRKBUILD}
SEPARATE_BUILD=	simple

MAKE_FLAGS=	INSTALL='install -c' \
		INSTALL_PROGRAM='install -c -s -m 555' \
		INSTALL_DATA='install -c -m 644'

# configure can't handle multiple blanks
CONFIGURE_SCRIPT=${WRKSRC}/configure.wrapper

pre-configure:
	@(echo '#!/bin/sh'; \
	  echo 'CFLAGS=`echo "$$CFLAGS" | tr -s "[:space:]"`'; \
	  echo '${WRKSRC}/configure $$@') >${CONFIGURE_SCRIPT}; \
	chmod u+rx ${CONFIGURE_SCRIPT}

post-configure:
	@cd ${WRKBUILD} && \
	    ./makemake --fsstnd=openbsd --prefix=${PREFIX} \
		--with-dynamic-ffi >Makefile && \
	make config.lisp

.include <bsd.port.mk>
