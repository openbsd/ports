# $OpenBSD: Makefile,v 1.21 2004/08/10 09:14:47 xsa Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"ANSI Common Lisp compiler"

DISTNAME=	clisp-2.33
CATEGORIES=	lang
HOMEPAGE=	http://clisp.cons.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
