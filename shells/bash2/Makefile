# $OpenBSD: Makefile,v 1.16 2000/03/31 16:30:25 espie Exp $

DISTNAME=	bash-2.04
CATEGORIES=	shells
NEED_VERSION=	1.240
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= bash
DOCNAME=	${DISTNAME:S/-/-doc-/}
DISTFILES=      ${DISTNAME}.tar.gz ${DOCNAME}.tar.gz

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=		Yes
HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=--prefix='$${DESTDIR}${PREFIX}' --sysconfdir='$${DESTDIR}/etc'

# Work-around for curses bug, which makes trace visible...
CFLAGS+=-Dtrace=bash_trace

FLAVORS=static
.if defined(STATIC) && ${STATIC:U} == YES
FLAVOR=static
.endif
FLAVOR?=

.if ${FLAVOR:L} == "static"
CONFIGURE_ENV+= LDFLAGS=-static
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bash
	cd ${WRKDIR}/doc && \
	${INSTALL_MAN} article.ps article.txt bash.html bash.ps \
		bashbug.ps bashref.html bashref.ps builtins.ps  \
		readline.ps  ${PREFIX}/share/doc/bash

.include <bsd.port.mk>
