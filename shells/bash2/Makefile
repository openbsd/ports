# OpenBSD makefile for:	bash
# Version required:     2.02
# Date created:		17 November 1997
# Whom:			gene
#
# $OpenBSD: Makefile,v 1.6 1998/05/19 17:01:29 gene Exp $
#

DISTNAME=       bash-2.02
CATEGORIES=	shells
MASTER_SITES=	${MASTER_SITE_GNU}
.if !defined(NOPORTDOCS)
DISTFILES=      bash-2.02.tar.gz bash-doc-2.02.tar.gz
.endif

MAINTAINER=	gene@OpenBSD.ORG

GNU_CONFIGURE=	Yes
MAN1=		bash.1 bashbug.1

pre-install:
	if [ ! -s ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	fi

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${PREFIX}/share/doc/bash
	${INSTALL_MAN}  \
		${WRKDIR}/bash-doc-2.02/doc/article.ps  \
		${WRKDIR}/bash-doc-2.02/doc/bashref.ps  \
		${PREFIX}/share/doc/bash
	${INSTALL_MAN}  \
		${WRKDIR}/bash-doc-2.02/doc/bash.html  \
		${WRKDIR}/bash-doc-2.02/doc/bashref.html  \
		${WRKDIR}/bash-doc-2.02/doc/bashref_toc.html  \
		${PREFIX}/share/doc/bash
	${INSTALL_MAN}  \
		${WRKDIR}/bash-doc-2.02/doc/article.txt  \
		${PREFIX}/share/doc/bash
	${GZIP_CMD} ${PREFIX}/share/doc/bash/*.ps
.endif
	@${ECHO} ""
	@${ECHO} "*** Finished installing $(DISTNAME)"
	@${ECHO} "*** To complete the install, you should notify the system"
	@${ECHO} "*** that $(PREFIX)/bin/bash is a valid shell by adding it to"
	@${ECHO} "*** the file /etc/shells."
	@${ECHO} "***"
	@${ECHO} "*** If you are unfamiliar with this file, consult the"
	@${ECHO} "*** shells(5) manual page."
	@${ECHO} ""

.include <bsd.port.mk>
