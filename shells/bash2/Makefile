# $OpenBSD: Makefile,v 1.15 2000/03/23 03:57:43 kevlo Exp $

DISTNAME=	bash-2.04
CATEGORIES=	shells
NEED_VERSION=	1.218
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

# invoke make with STATIC=yes to build a static binary
.if defined(STATIC) && ${STATIC:U} == YES
CONFIGURE_ENV+= LDFLAGS=-static
PKGNAME=	${DISTNAME}-static
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bash
	${INSTALL_MAN}  \
		${WRKDIR}/doc/article.ps  \
		${WRKDIR}/doc/article.txt  \
		${WRKDIR}/doc/bash.html  \
		${WRKDIR}/doc/bash.ps  \
		${WRKDIR}/doc/bashbug.ps  \
		${WRKDIR}/doc/bashref.html  \
		${WRKDIR}/doc/bashref.ps  \
		${WRKDIR}/doc/builtins.ps  \
		${WRKDIR}/doc/readline.ps  \
			${PREFIX}/share/doc/bash

.include <bsd.port.mk>
