# $OpenBSD: Makefile,v 1.1.1.1 1999/05/16 03:39:40 brad Exp $
#
# Relevant URLs:	http://www.bsdi.com/netscape/
#			http://www.fortify.net/

# WARNING
# -------
# i386: Requires a kernel built with
#	'option COMPAT_BSDOS' and 'option COMPAT_43'
# SPARC: Requires a kernel built with
#	 'option COMPAT_SUNOS'

ONLY_FOR_ARCHS=	i386 sparc
NEED_VERSION=	1.89

NS_i386=	communicator-v451-export.x86-bsdi-bsd2.tar.gz
NS_SPARC=	communicator-v451-export.sparc-sun-sunos4.1.3_U1.tar.gz
FORTIFY_i386=	Fortify-1.4.1-unix-x86.tar.gz
FORTIFY_SPARC=	Fortify-1.4.1-unix-sparc.tar.gz

.if ${MACHINE_ARCH} == "i386"
DISTNAME=	communicator-v451-export.x86-bsdi-bsd2
COMMUNICATORNAME= communicator-v451.x86-bsdi-bsd2
FORTIFYNAME=	Fortify-1.4.1-unix-x86
.endif
.if ${MACHINE_ARCH} == "sparc"
DISTNAME=	communicator-v451-export.sparc-sun-sunos4.1.3_U1
COMMUNICATORNAME= communicator-v451.sparc-sun-sunos4.1.3_U1
FORTIFYNAME=	Fortify-1.4.1-unix-sparc
.endif

PKGNAME=	communicator-4.51-fortified
CATEGORIES=     www
DIST_SUBDIR=	${PKGNAME}
NO_CDROM=       "NOFEE: see http://www.fortify.net/copyright.txt"
MASTER_SITES=	ftp://ftp.fortify.net/pub/Fortify/ \
		ftp://ftp.netscape.com/pub/communicator/4.51/english/unix/unsupported/bsdi21/complete_install/ \
		ftp://ftp.netscape.com/pub/communicator/4.51/english/unix/unsupported/sunos413/complete_install/ \
		ftp://ftp.sunet.se/pub/security/tools/net/Fortify/ \
		ftp://ftp.funet.fi/pub/crypt/mirrors/fortify/ \
		ftp://ftp.replay.com/pub/crypto/apache/Fortify/ \
		ftp://ftp.it.net.au/mirrors/Fortify/

DISTFILES=	${DISTNAME}.tar.gz \
		${FORTIFYNAME}.tar.gz
SUPDISTFILES=	${NS_i386} ${NS_SPARC} ${FORTIFY_i386} ${FORTIFY_SPARC}

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
	@${ECHO} "           'option COMPAT_BSDOS' and 'option COMPAT_43'"
	@${ECHO} "           for proper operation.  The GENERIC kernel contains"
	@${ECHO} "           these options."
	@${ECHO} ""
.endif
.if ${MACHINE_ARCH} == "sparc"
	@${ECHO} ""
	@${ECHO} "  WARNING: This application requires a kernel compiled with"
	@${ECHO} "           'option COMPAT_SUNOS' for proper operation. The"
	@${ECHO} "           GENERIC kernel contains these options."
	@${ECHO} ""
.endif
.endif

do-build:
	@cd ${WRKDIR}/${FORTIFYNAME}/src/common && \
	${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} all && \
	cd ${WRKDIR}/${FORTIFYNAME}/src/cmdline && \
	${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} fortify

do-install:
	@cd ${WRKDIR}/${COMMUNICATORNAME} && ${MAKE_ENV} ./ns-install

post-install:
.if ${MACHINE_ARCH} == "sparc"
	@${MV} ${PREFIX}/netscape/netscape ${PREFIX}/netscape/netscape_nis
	@${MV} ${PREFIX}/netscape/netscape_dns ${PREFIX}/netscape/netscape
.endif
	@cd ${WRKDIR}/${FORTIFYNAME} && \
	src/cmdline/fortify ${PREFIX}/netscape/netscape
.if ${MACHINE_ARCH} == "sparc"
	@cd ${WRKDIR}/${FORTIFYNAME} && \
	src/cmdline/fortify ${PREFIX}/netscape/netscape_nis
.endif
	@${SED} 's#@netscape_home@#${PREFIX}/netscape#' \
	 ${FILESDIR}/netscape.${MACHINE_ARCH} > ${WRKDIR}/netscape
	@if test -f ${PREFIX}/bin/netscape ; then \
		${MV} ${PREFIX}/bin/netscape ${PREFIX}/bin/netscape.old ; fi
	@${INSTALL_SCRIPT} ${WRKDIR}/netscape ${PREFIX}/bin

.include <bsd.port.mk>
