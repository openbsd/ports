# $OpenBSD: Makefile,v 1.10 1999/12/08 05:20:30 brad Exp $

DISTNAME=	bash-2.03
CATEGORIES=	shells
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= bash
DOCNAME=	${DISTNAME:S/-/-doc-/}
DISTFILES=      ${DISTNAME}.tar.gz ${DOCNAME}.tar.gz

MAINTAINER=	ports@openbsd.org

GNU_CONFIGURE=	yes

# invoke with -DSTATIC to build a static binary
.if defined(STATIC)
CONFIGURE_ENV+= LDFLAGS=-static
PKGNAME=	${DISTNAME}-static
.endif

post-install:
	@mkdir -p ${PREFIX}/share/doc/bash
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
	@PKG_PREFIX="${PREFIX}" sh ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
