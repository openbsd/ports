# $OpenBSD: Makefile,v 1.35 2000/03/24 22:12:03 espie Exp $
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

NAVIGATOR_V=	4.61
NAVIGATOR_V2=	461
NS_I386=	navigator-v${NAVIGATOR_V2}-export.x86-bsdi-bsd2.tar.gz
NS_SPARC=	navigator-v${NAVIGATOR_V2}-export.sparc-sun-sunos4.1.3_U1.tar.gz
FORTIFY=	Fortify-1.4.6-unix-src

.if ${MACHINE_ARCH} == "i386"
DISTNAME=	navigator-v${NAVIGATOR_V2}-export.x86-bsdi-bsd2
NAVIGATORNAME=	navigator-v${NAVIGATOR_V2}.x86-bsdi-bsd2
MAINDIR=	bsdi21/navigator_standalone
SUPDIR=		sunos413/navigator_standalone
SUPDISTFILES=	${NS_SPARC}:0
.endif
.if ${MACHINE_ARCH} == "sparc"
DISTNAME=	navigator-v${NAVIGATOR_V2}-export.sparc-sun-sunos4.1.3_U1
NAVIGATORNAME=	navigator-v${NAVIGATOR_V2}.sparc-sun-sunos4.1.3_U1
MAINDIR=	sunos413/navigator_standalone
SUPDIR=		bsdi21/navigator_standalone
SUPDISTFILES=	${NS_I386}:0
.endif

SUBMAIN=communicator/english/${NAVIGATOR_V}/unix/unsupported/${MAINDIR}
SUBSUP=	communicator/english/${NAVIGATOR_V}/unix/unsupported/${SUPDIR}

PKGNAME=	navigator-${NAVIGATOR_V}
CATEGORIES=     www
NEED_VERSION=	1.218
DIST_SUBDIR=	netscape


MASTER_SITES= \
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
MASTER_SITES0= \
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
MASTER_SITES1=	ftp://ftp.fortify.net/pub/Fortify/ \
		ftp://ftp.sunet.se/pub/security/tools/net/Fortify/ \
		ftp://ftp.funet.fi/pub/crypt/mirrors/fortify/ \
		ftp://ftp.replay.com/pub/crypto/apache/Fortify/ \
		ftp://ftp.it.net.au/mirrors/Fortify/
DISTFILES=	${DISTNAME}.tar.gz \
		${FORTIFY}.tar.gz:1

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

FAKE=	Yes

NO_CONFIGURE=	Yes
OBJMACHINE=	Yes

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -I. -I../common" \
		LDFLAGS="" YACC="yacc"

WRKDIST=	${WRKDIR}

pre-fetch:
.if !defined(NO_WARNINGS)
.if ${MACHINE_ARCH} == "i386"
	@echo ""
	@echo "  WARNING: This application requires a kernel compiled with"
	@echo "           'option COMPAT_BSDOS' for proper operation.  The"
	@echo "           GENERIC kernel contains this option."
	@echo ""
.endif
.if ${MACHINE_ARCH} == "sparc"
	@echo ""
	@echo "  WARNING: This application requires a kernel compiled with"
	@echo "           'option COMPAT_SUNOS' and SunOS shared librarys"
	@echo "           for proper operation, see compat_sunos(8) for"
	@echo "           further details. The GENERIC kernel contains"
	@echo "           this option."
	@echo ""
.endif
.endif

do-build:
	@cd ${WRKDIR}/${FORTIFY}/src/common && \
	env ${MAKE_ENV} make ${MAKE_FLAGS} -f ${MAKE_FILE} all && \
	cd ${WRKDIR}/${FORTIFY}/src/cmdline && \
	env ${MAKE_ENV} make ${MAKE_FLAGS} -f ${MAKE_FILE} fortify

do-install:
	@cd ${WRKDIR}/${NAVIGATORNAME} && ${MAKE_ENV} ./ns-install

post-install:
.if ${MACHINE_ARCH} == "sparc"
	@cp ${PREFIX}/netscape/netscape ${PREFIX}/netscape/netscape_nis
	@cp ${PREFIX}/netscape/netscape_dns ${PREFIX}/netscape/netscape
	@rm -f ${PREFIX}/netscape/netscape_dns
.endif
	@cd ${WRKDIR}/${FORTIFY} && \
	ln -fs languages/English Messages && \
	{ echo yes ; echo no ; echo no; } \
	| src/cmdline/fortify >/dev/null ${PREFIX}/netscape/netscape
.if ${MACHINE_ARCH} == "sparc"
	@cd ${WRKDIR}/${FORTIFY} && \
	{ echo yes ; echo no ; echo no; } \
	| src/cmdline/fortify >/dev/null ${PREFIX}/netscape/netscape_nis
.endif
	@sed -e 's#@netscape_home@#${TRUEPREFIX}/netscape#' \
	 ${FILESDIR}/netscape.${MACHINE_ARCH} > ${WRKDIR}/netscape
	@if [ -f ${PREFIX}/bin/netscape ]; then \
	 mv ${PREFIX}/bin/netscape ${PREFIX}/bin/netscape.old; \
	fi
	${INSTALL_SCRIPT} ${WRKDIR}/netscape ${PREFIX}/bin

.include <bsd.port.mk>
