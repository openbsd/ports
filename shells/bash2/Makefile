# OpenBSD makefile for:	bash
# Version required:     2.01
# Date created:		17 November 1997
# Whom:			gene
#
# $OpenBSD: Makefile,v 1.4 1997/12/13 00:07:24 gene Exp $
#

DISTNAME=       bash-2.01
CATEGORIES=	shells
MASTER_SITES=	ftp://slc2.ins.cwru.edu/pub/dist/  \
		${MASTER_SITE_GNU}
.if !defined(NOPORTDOCS)
DISTFILES=      bash-2.01.tar.gz bash-doc-2.01.tar.gz
.endif

MAINTAINER=	gene@OpenBSD.ORG

GNU_CONFIGURE=	Yes
MAN1=		bash.1 bashbug.1

post-patch:
	$(CP) /usr/include/fnmatch.h ${WRKSRC}/lib/glob/fnmatch.h

pre-install:
	if [ ! -s ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	fi

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${PREFIX}/share/doc/bash
	${INSTALL_MAN}  \
		${WRKDIR}/bash-doc-2.01/doc/article.ps  \
		${WRKDIR}/bash-doc-2.01/doc/bashref.ps  \
		${PREFIX}/share/doc/bash
	${INSTALL_MAN}  \
		${WRKDIR}/bash-doc-2.01/doc/bash.html  \
		${WRKDIR}/bash-doc-2.01/doc/bashref.html  \
		${WRKDIR}/bash-doc-2.01/doc/bashref_toc.html  \
		${PREFIX}/share/doc/bash
	${INSTALL_MAN}  \
		${WRKDIR}/bash-doc-2.01/doc/article.txt  \
		${PREFIX}/share/doc/bash
	${GZIP_CMD} ${PREFIX}/share/doc/bash/*.ps
.endif
	@$(ECHO) "Finished installing $(DISTNAME)"
	@$(ECHO) "To complete the install, you should notify the system"
	@$(ECHO) "that $(PREFIX)/bin/bash is a valid shell by adding it to"
	@$(ECHO) "/etc/shells."
	@$(ECHO) "If you are unfamiliar with this file, consult the shells(5)"
	@$(ECHO) "manual page."

.include <bsd.port.mk>
