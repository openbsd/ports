# $OpenBSD: Makefile,v 1.13 1999/10/07 19:40:43 brad Exp $
#
# Relevant URLs:	http://www.bsdi.com/netscape/
#			http://www.fortify.net/

# WARNING
# -------
# i386: Requires a kernel built with
#	'option COMPAT_BSDOS'
# SPARC: Requires a kernel built with
#	 'option COMPAT_SUNOS'

ONLY_FOR_ARCHS=	i386 sparc
NEED_VERSION=	1.121

COMMUNICATOR_V=	4.61
COMMUNICATOR_V2=461
NS_I386=	communicator-v${COMMUNICATOR_V2}-export.x86-bsdi-bsd2.tar.gz
NS_SPARC=	communicator-v${COMMUNICATOR_V2}-export.sparc-sun-sunos4.1.3_U1.tar.gz
FORTIFY=	Fortify-1.4.4-unix-src

.if ${MACHINE_ARCH} == "i386"
DISTNAME=	communicator-v${COMMUNICATOR_V2}-export.x86-bsdi-bsd2
COMMUNICATORNAME=communicator-v${COMMUNICATOR_V2}.x86-bsdi-bsd2
MAINDIR=	bsdi21/complete_install
SUPDIR=		sunos413/complete_install
SUPDISTFILES=	${NS_SPARC}
.endif
.if ${MACHINE_ARCH} == "sparc"
DISTNAME=	communicator-v${COMMUNICATOR_V2}-export.sparc-sun-sunos4.1.3_U1
COMMUNICATORNAME=communicator-v${COMMUNICATOR_V2}.sparc-sun-sunos4.1.3_U1
MAINDIR=	sunos413/complete_install
SUPDIR=		bsdi21/complete_install
SUPDISTFILES=	${NS_I386}
.endif

SUBMAIN=communicator/english/${COMMUNICATOR_V}/unix/unsupported/${MAINDIR}
SUBSUP=	communicator/english/${COMMUNICATOR_V}/unix/unsupported/${SUPDIR}

PKGNAME=	communicator-${COMMUNICATOR_V}
CATEGORIES=     www
DIST_SUBDIR=	netscape

NO_CDROM=       "NOFEE: see http://www.fortify.net/copyright.txt"

MASTER_SITES= \
	http://wuarchive.wustl.edu/packages/www/Netscape/${SUBSUP}/ \
	ftp://netscape.Mirror.McGill.CA/pub/mirrors/ftp.netscape.com/pub/${SUBSUP}/ \
	ftp://ftp.netscape.com/pub/${SUBSUP}/ \
	ftp://uiarchive.uiuc.edu/pub/www/netscape/${SUBSUP}/ \
	ftp://ftp.the.net/pub/mirrors/ftp.netscape.com/pub/${SUBSUP}/ \
	ftp://sunsite.doc.ic.ac.uk/packages/netscape/pub/${SUBSUP}/ \
	ftp://ftp-de.netscape.com/pub/${SUBSUP}/ \
	ftp://ftp.heanet.ie/pub/netscape/${SUBSUP}/ \
	ftp://nic.funet.fi/pub/mirrors/ftp.netscape.com/pub/${SUBSUP}/ \
	ftp://sunsite.tut.fi/pub/Mirror/mirrorsite.netscape.com/pub/${SUBSUP}/

MASTER_SITES0= \
	http://wuarchive.wustl.edu/packages/www/Netscape/${SUBMAIN}/ \
	ftp://netscape.Mirror.McGill.CA/pub/mirrors/ftp.netscape.com/pub/${SUBMAIN}/ \
	ftp://ftp.netscape.com/pub/${SUBMAIN}/ \
	ftp://uiarchive.uiuc.edu/pub/www/netscape/${SUBMAIN}/ \
	ftp://ftp.the.net/pub/mirrors/ftp.netscape.com/pub/${SUBMAIN}/ \
	ftp://sunsite.doc.ic.ac.uk/packages/netscape/pub/${SUBMAIN}/ \
	ftp://ftp-de.netscape.com/pub/${SUBMAIN}/ \
	ftp://ftp.heanet.ie/pub/netscape/${SUBMAIN}/ \
	ftp://nic.funet.fi/pub/mirrors/ftp.netscape.com/pub/${SUBMAIN}/ \
	ftp://sunsite.tut.fi/pub/Mirror/mirrorsite.netscape.com/pub/${SUBMAIN}/

MASTER_SITES1=	ftp://ftp.fortify.net/pub/Fortify/ \
		ftp://ftp.sunet.se/pub/security/tools/net/Fortify/ \
		ftp://ftp.funet.fi/pub/crypt/mirrors/fortify/ \
		ftp://ftp.replay.com/pub/crypto/apache/Fortify/ \
		ftp://ftp.it.net.au/mirrors/Fortify/

DISTFILES=	${DISTNAME}.tar.gz:0 \
		${FORTIFY}.tar.gz:1

OBJMACHINE=	"yes"
NO_WRKSUBDIR=	"No work subdirectory"
NO_CONFIGURE=	"No configure scripts"
IS_INTERACTIVE= "Netscape installer"

MAINTAINER=	brad@openbsd.org

pre-fetch:
.if !defined(NO_WARNINGS)
.if ${MACHINE_ARCH} == "i386"
	@${ECHO} ""
	@${ECHO} "  WARNING: This application requires a kernel compiled with"
	@${ECHO} "           'option COMPAT_BSDOS' for proper operation.  The"
	@${ECHO} "           GENERIC kernel contains these options."
	@${ECHO} ""
.endif
.if ${MACHINE_ARCH} == "sparc"
	@${ECHO} ""
	@${ECHO} "  WARNING: This application requires a kernel compiled with"
	@${ECHO} "           'option COMPAT_SUNOS' and SunOS shared librarys"
	@${ECHO} "           for proper operation, see compat_sunos(8) for"
	@${ECHO} "           further details. The GENERIC kernel contains"
	@${ECHO} "           this option."
	@${ECHO} ""
.endif
.endif

do-build:
	@cd ${WRKDIR}/${FORTIFY}/src/common && \
	${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} all && \
	cd ${WRKDIR}/${FORTIFY}/src/cmdline && \
	${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} fortify

do-install:
	@cd ${WRKDIR}/${COMMUNICATORNAME} && ${MAKE_ENV} ./ns-install

post-install:
.if ${MACHINE_ARCH} == "sparc"
	@${CP} ${PREFIX}/netscape/netscape ${PREFIX}/netscape/netscape_nis
	@${CP} ${PREFIX}/netscape/netscape_dns ${PREFIX}/netscape/netscape
	@${RM} ${PREFIX}/netscape/netscape_dns
.endif
	@cd ${WRKDIR}/${FORTIFY} && \
	${LN} -sf languages/English Messages && \
	(${ECHO} yes ; ${ECHO} no ; ${ECHO} no) \
	| src/cmdline/fortify ${PREFIX}/netscape/netscape
.if ${MACHINE_ARCH} == "sparc"
	@cd ${WRKDIR}/${FORTIFY} && \
	(${ECHO} yes ; ${ECHO} no ; ${ECHO} no) \
	| src/cmdline/fortify ${PREFIX}/netscape/netscape_nis
.endif
	@${SED} 's#@netscape_home@#${PREFIX}/netscape#' \
	 ${FILESDIR}/netscape.${MACHINE_ARCH} > ${WRKDIR}/netscape
	@if test -f ${PREFIX}/bin/netscape ; then \
		${MV} ${PREFIX}/bin/netscape ${PREFIX}/bin/netscape.old ; fi
	@${INSTALL_SCRIPT} ${WRKDIR}/netscape ${PREFIX}/bin

.include <bsd.port.mk>
