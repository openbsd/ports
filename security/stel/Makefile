# $OpenBSD: Makefile,v 1.2 1999/04/01 09:09:36 turan Exp $
#

# What port/package will be created
#
DISTNAME=		stel
CATEGORIES=     	security

# where to send bitches about this port
#
MAINTAINER=		turan@cvs.openbsd.org

# where the source files and patches can be fetched
#
MASTER_SITES=		\
	ftp://idea.sec.dsi.unimi.it/pub/security/cert-it/

NO_CONFIGURE=		yes

.if !target(do-extract)
do-extract:
.if !defined(NO_WRKDIR)
.if defined(WRKOBJDIR)
	@${RM} -rf ${WRKOBJDIR}/${PORTSUBDIR}
	@${MKDIR} -p ${WRKOBJDIR}/${PORTSUBDIR}
	@${MKDIR} -p ${WRKOBJDIR}/${DISTNAME}
	@if [ ! -L ${WRKDIR} ] || \
	  [ X`${READLINK} ${WRKDIR}` != X${WRKOBJDIR}/${PORTSUBDIR} ]; then \
		echo "${WRKDIR} -> ${WRKOBJDIR}/${PORTSUBDIR}"; \
		${RM} -f ${WRKDIR}; \
		${LN} -sf ${WRKOBJDIR}/${PORTSUBDIR} ${WRKDIR}; \
	fi
.else
	@${RM} -rf ${WRKDIR}
	@${MKDIR} ${WRKDIR}
	@${MKDIR} ${WRKDIR}/${DISTNAME}
.endif
.endif
	@for file in ${EXTRACT_ONLY}; do \
		if ! (cd ${WRKDIR}/${DISTNAME} && ${EXTRACT_CMD} ${EXTRACT_BEFORE_ARGS} ${_DISTDIR}/$$file ${EXTRACT_AFTER_ARGS});\
		then \
			exit 1; \
		fi \
	done
.endif

.if !target(do-build)
do-build:
	@(cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} ${MAKEFILE} bsdi)
	nroff -mandoc ${WRKSRC}/man/stel.1 > ${WRKSRC}/man/stel.cat1
	nroff -mandoc ${WRKSRC}/man/steld.8 > ${WRKSRC}/man/steld.cat8
.endif

.if !target(do-install)
do-install:
	install -g wheel -m 0555 -o root ${WRKSRC}/stel/stel /usr/local/bin
	install -g wheel -m 0555 -o root ${WRKSRC}/stel/steld /usr/local/sbin
	install -g wheel -m 0444 -o root ${WRKSRC}/man/stel.cat1 /usr/local/man/cat1/stel.0
	install -g wheel -m 0444 -o root ${WRKSRC}/man/steld.cat8 /usr/local/man/cat8/steld.0
	@cat ${.CURDIR}/pkg/POST-INSTALL
.endif

.include <bsd.port.mk>
