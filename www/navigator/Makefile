# $OpenBSD: Makefile,v 1.13 1999/06/21 16:15:54 brad Exp $
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

NS_i386=	navigator-v461-export.x86-bsdi-bsd2.tar.gz
NS_SPARC=	navigator-v461-export.sparc-sun-sunos4.1.3_U1.tar.gz
FORTIFY=	Fortify-1.4.3-unix-src

.if ${MACHINE_ARCH} == "i386"
DISTNAME=	navigator-v461-export.x86-bsdi-bsd2
NAVIGATORNAME=	navigator-v461.x86-bsdi-bsd2
.endif
.if ${MACHINE_ARCH} == "sparc"
DISTNAME=	navigator-v461-export.sparc-sun-sunos4.1.3_U1
NAVIGATORNAME=	navigator-v461.sparc-sun-sunos4.1.3_U1
.endif

PKGNAME=	navigator-4.61-fortified
CATEGORIES=     www
DIST_SUBDIR=	${PKGNAME}
NO_CDROM=       "NOFEE: see http://www.fortify.net/copyright.txt"
MASTER_SITES=	ftp://ftp.fortify.net/pub/Fortify/ \
		ftp://ftp.netscape.com/pub/communicator/english/4.61/unix/unsupported/bsdi21/navigator_standalone/ \
		ftp://ftp.netscape.com/pub/communicator/english/4.61/unix/unsupported/sunos413/navigator_standalone/ \
		ftp://ftp.sunet.se/pub/security/tools/net/Fortify/ \
		ftp://ftp.funet.fi/pub/crypt/mirrors/fortify/ \
		ftp://ftp.replay.com/pub/crypto/apache/Fortify/ \
		ftp://ftp.it.net.au/mirrors/Fortify/

DISTFILES=	${DISTNAME}.tar.gz \
		${FORTIFY}.tar.gz
SUPDISTFILES=	${NS_i386} ${NS_SPARC} ${FORTIFY}.tar.gz

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
	@cd ${WRKDIR}/${FORTIFY}/src/common && \
	${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} all && \
	cd ${WRKDIR}/${FORTIFY}/src/cmdline && \
	${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} fortify

do-install:
	@cd ${WRKDIR}/${NAVIGATORNAME} && ${MAKE_ENV} ./ns-install

post-install:
.if ${MACHINE_ARCH} == "sparc"
	@${CP} ${PREFIX}/netscape/netscape ${PREFIX}/netscape/netscape_nis
	@${CP} ${PREFIX}/netscape/netscape_dns ${PREFIX}/netscape/netscape
	@${RM} ${PREFIX}/netscape/netscape_dns
.endif
	@cd ${WRKDIR}/${FORTIFY} && \
	${LN} -sf languages/English Messages && \
	src/cmdline/fortify ${PREFIX}/netscape/netscape
.if ${MACHINE_ARCH} == "sparc"
	@cd ${WRKDIR}/${FORTIFY} && \
	src/cmdline/fortify ${PREFIX}/netscape/netscape_nis
.endif
	@${SED} 's#@netscape_home@#${PREFIX}/netscape#' \
	 ${FILESDIR}/netscape.${MACHINE_ARCH} > ${WRKDIR}/netscape
	@if test -f ${PREFIX}/bin/netscape ; then \
		${MV} ${PREFIX}/bin/netscape ${PREFIX}/bin/netscape.old ; fi
	@${INSTALL_SCRIPT} ${WRKDIR}/netscape ${PREFIX}/bin

.include <bsd.port.mk>
