# $OpenBSD: Makefile,v 1.18 2000/07/04 21:26:17 brad Exp $

DISTNAME=	bash-2.04
CATEGORIES=	shells
NEED_VERSION=	1.310
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= bash
DOCNAME=	${DISTNAME:S/-/-doc-/}
DISTFILES=	${DISTNAME}.tar.gz ${DOCNAME}.tar.gz

HOMEPAGE=	http://www.gnu.org/software/bash/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest

# Work-around for curses bug, which makes trace visible...
#CFLAGS+=-Dtrace=bash_trace

FLAVORS=static
FLAVOR?=

.if defined(STATIC) && ${STATIC:U} == YES
FLAVOR=static
.endif
.if ${FLAVOR:L} == "static"
CONFIGURE_ARGS+= --enable-static-link
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bash
	cd ${WRKDIR}/doc && \
	${INSTALL_MAN} article.ps article.txt bash.html bash.ps \
		bashbug.ps bashref.html bashref.ps builtins.ps  \
		readline.ps  ${PREFIX}/share/doc/bash

.include <bsd.port.mk>
