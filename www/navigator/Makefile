# $OpenBSD: Makefile,v 1.7 1999/04/26 21:13:57 brad Exp $
#
# Relevant URLs:	http://www.bsdi.com/netscape/
#			http://www.fortify.net/

# WARNING: Requires a kernel built with 'option COMPAT_BSDOS'
#
DISTNAME=	navigator-v451-export.x86-bsdi-bsd2
PKGNAME=	navigator-4.51-fortified
CATEGORIES=     www
DIST_SUBDIR=	${PKGNAME}
WRKSRC=		${WRKDIR}
NO_CDROM=       "NOFEE: see http://www.fortify.net/copyright.txt"
ONLY_FOR_ARCHS=	i386

NAVIGATORNAME=	navigator-v451.x86-bsdi-bsd2	

MASTER_SITES=	ftp://ftp.netscape.com/pub/communicator/4.51/english/unix/unsupported/bsdi21/navigator_standalone/

FORTIFYNAME=	Fortify-1.4.1-unix-x86

MASTER_SITES+=	ftp://fortify.net/pub/Fortify/ \
		ftp://ftp.sunet.se/pub/security/tools/net/Fortify/ \
		ftp://ftp.funet.fi/pub/crypt/mirrors/fortify/ \
		ftp://ftp.replay.com/pub/crypto/apache/Fortify/ \
		ftp://ftp.it.net.au/mirrors/Fortify/

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		${FORTIFYNAME}${EXTRACT_SUFX}

NO_CONFIGURE=	"No configure scripts"
IS_INTERACTIVE= "Netscape installer"

MAINTAINER=	ports@OpenBSD.ORG

.if !defined(NO_WARNINGS)
pre-fetch:
	@${ECHO} ""
	@${ECHO} "  WARNING: This application requires a kernel compiled with"
	@${ECHO} "           'option COMPAT_BSDOS' and 'option COMPAT_43'"
	@${ECHO} "           for proper operation.  The GENERIC kernel contains"
	@${ECHO} "           these options."
	@${ECHO} ""
.endif

do-build:
	@cd ${WRKDIR}/${FORTIFYNAME}/src/common && \
	${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} all && \
	cd ${WRKDIR}/${FORTIFYNAME}/src/cmdline && \
	${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} fortify

do-install:
	@cd ${WRKDIR}/${NAVIGATORNAME} && ${MAKE_ENV} ./ns-install

post-install:
	@cd ${WRKDIR}/${FORTIFYNAME} && \
	src/cmdline/fortify ${PREFIX}/netscape/netscape
	@sed 's#@netscape_home@#${PREFIX}/netscape#' ${FILESDIR}/netscape > ${WRKDIR}/netscape
	-if test -f ${PREFIX}/bin/netscape ; then \
		${MV} ${PREFIX}/bin/netscape ${PREFIX}/bin/netscape.old ; fi
	@${INSTALL_SCRIPT} ${WRKDIR}/netscape ${PREFIX}/bin

.include <bsd.port.mk>
