# $OpenBSD: Makefile,v 1.4 1998/10/18 05:02:10 marc Exp $
#
# Relevant URLs:	http://www.bsdi.com/netscape/
#			http://www.fortify.net/

# WARNING: Requires a kernel built with 'option COMPAT_BSDOS'
#
DISTNAME=	navigator-v406-export.x86-bsdi-bsd2
PKGNAME=	navigator-4.06-fortified
CATEGORIES=     www
DIST_SUBDIR=	${PKGNAME}
WRKSRC=		${WRKDIR}
NO_CDROM=       "NOFEE: see http://www.fortify.net/copyright.txt"
ONLY_FOR_ARCHS=	i386

NAVIGATORNAME=	navigator-v406.x86-bsdi-bsd2	

MASTER_SITES=	ftp://ftp.netscape.com/pub/communicator/4.06/development/english/unix/bsdi21/navigator_standalone/

FORTIFYNAME=	Fortify-1.2.6-unix-x86

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

pre-fetch:
	@${ECHO} ""
	@${ECHO} "  WARNING: This application requires a kernel compiled with"
	@${ECHO} "           'option COMPAT_BSDOS' and 'option COMPAT_43'"
	@${ECHO} "           for proper operation.  The GENERIC kernel contains"
	@${ECHO} "           these options."
	@${ECHO} ""

do-build:
	@cd ${WRKDIR}/${FORTIFYNAME}/src && \
	${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} fortify

do-install:
	@cd ${WRKDIR}/${NAVIGATORNAME} && ${MAKE_ENV} ./ns-install

post-install:
	@cd ${WRKDIR}/${FORTIFYNAME} && src/fortify ${PREFIX}/netscape/netscape
	@sed 's#y0y0y0#${PREFIX}/netscape#' ${FILESDIR}/netscape > ${WRKDIR}/netscape
	-if test -f ${PREFIX}/bin/netscape ; then \
		${MV} ${PREFIX}/bin/netscape ${PREFIX}/bin/netscape.old ; fi
	@${INSTALL_SCRIPT} ${WRKDIR}/netscape ${PREFIX}/bin

.include <bsd.port.mk>
