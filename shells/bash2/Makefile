# $OpenBSD: Makefile,v 1.7 1999/02/20 01:49:12 marc Exp $
#

DISTNAME=		bash-2.03
CATEGORIES=		shells

MAINTAINER=		marc@OpenBSD.ORG

MASTER_SITES=		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	bash
DOCNAME=		${DISTNAME:S/-/-doc-/}
DISTFILES=      	${DISTNAME}${EXTRACT_SUFX} ${DOCNAME}${EXTRACT_SUFX}

GNU_CONFIGURE=		yes

pre-install:
	if [ ! -s ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	fi

post-install:
	${MKDIR} ${PREFIX}/share/doc/bash
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

