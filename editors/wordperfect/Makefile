# $OpenBSD: Makefile,v 1.4 1999/10/29 09:40:15 turan Exp $

PKGNAME=	wordperfect-8.0
CATEGORIES=     editors

MAINTAINER=	dugsong@monkey.org

MASTER_SITES=	see_do-fetch_target

DISTNAME=	WordPerfect

NO_CDROM=	"LIC: redistribution not allowed"
MIRROR_DISTFILE=no

RUN_DEPENDS=    /emul/linux/lib/libc.so.5:${PORTSDIR}/emulators/linux_lib

ONLY_FOR_ARCHS=	i386

IS_INTERACTIVE=	yes

NO_WRKSUBDIR=	yes
NO_CONFIGURE=	yes
NO_BUILD=	yes
NO_PACKAGE=	interactive port

do-fetch:
	@if [ ! -f ${DISTDIR}/${DISTFILES} ]; then \
	   ${ECHO} "" ; \
	   ${ECHO} "  The source to this port may not be automatically fetched" ; \
	   ${ECHO} "  due to licensing restrictions. You MUST fetch the source" ; \
	   ${ECHO} "  manually after reading and agreeing to the license at:" ; \
	   ${ECHO} "" ; \
	   ${ECHO} "      http://linux.corel.com/linux8/download.htm" ; \
	   ${ECHO} "" ; \
	   ${ECHO} "  Once ${DISTFILES} has been downloaded, move it to ${DISTDIR}" ; \
	   ${ECHO} "  and then restart this build." ; \
	   ${ECHO} "" ; \
	   exit 1 ; \
	fi

post-extract:
	@(cd ${WRKDIR} ; for file in b* g* ; do ${TAR} -xf $$file ; done)

pre-install:
	@${ECHO} "" ; \
	${ECHO} "   This installation of WordPerfect will expire in 90 days," ; \
	${ECHO} "   unless you retrieve a free registration key from" ; \
	${ECHO} "" ; \
	${ECHO} "         https://livewire.corel.com/wp8LinuxReg/" ; \
	${ECHO} "" ; \
	${ECHO} "   to register your copy TODAY. Do this now!" ; \
	${ECHO} "" ; \
	${ECHO} "   The recommended installation directory for WordPerfect is" ; \
	${ECHO} "   /usr/local/corel"

do-install:
	@${MKDIR} ${WRKDIR}/tmp
	@(cd ${WRKDIR} ; ${SCRIPTS_ENV} TMPDIR=${WRKDIR}/tmp ${SH} Runme)
	@sed 's#y0y0y0#${PREFIX}/corel#' ${FILESDIR}/xwp > ${WRKDIR}/xwp
	@if test -f ${PREFIX}/bin/xwp ; then \
	   ${MV} ${PREFIX}/bin/xwp ${PREFIX}/bin/xwp.old ; fi
	${INSTALL_SCRIPT} ${WRKDIR}/xwp ${PREFIX}/bin


.include <bsd.port.mk>
