# $OpenBSD: Makefile,v 1.9 1999/08/21 17:20:46 brad Exp $

DISTNAME=	bash-2.03
CATEGORIES=	shells
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= bash

MAINTAINER=	marc@openbsd.org

DOCNAME=	${DISTNAME:S/-/-doc-/}
DISTFILES=      ${DISTNAME}${EXTRACT_SUFX} ${DOCNAME}${EXTRACT_SUFX}

GNU_CONFIGURE=	yes

pre-install:
	@if [ ! -s ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	fi

post-install:
	@${MKDIR} ${PREFIX}/share/doc/bash
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
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>

