# $OpenBSD: Makefile.inc,v 1.10 2000/10/22 16:16:26 espie Exp $
#
# Relevant URLs:	http://www.bsdi.com/netscape/
#			http://www.fortify.net/

# Subdirectory MUST define DIRNAME, LOCATION and PROGRAM_V.

CATEGORIES=     www
NEED_VERSION=	1.322
MASTER_SITES= \
	ftp://ftp.netscape.com/pub/%SUBDIR%/ \
	ftp://uiarchive.uiuc.edu/pub/www/netscape/%SUBDIR%/ \
	ftp://netscape.Mirror.McGill.CA/pub/mirrors/ftp.netscape.com/pub/%SUBDIR%/ \
	ftp://ftp.the.net/pub/mirrors/ftp.netscape.com/pub/%SUBDIR%/ \
	ftp://sunsite.doc.ic.ac.uk/packages/netscape/pub/%SUBDIR%/ \
	ftp://ftp-de.netscape.com/pub/%SUBDIR%/ \
	ftp://nic.funet.fi/pub/mirrors/ftp.netscape.com/pub/%SUBDIR%/
MASTER_SITES0= \
	ftp://archive.netscape.com/pub/%SUBDIR%/
MASTER_SITES1=	ftp://ftp.fortify.net/pub/Fortify/ \
		ftp://ftp.sunet.se/pub/security/tools/net/Fortify/ \
		ftp://ftp.funet.fi/pub/crypt/mirrors/fortify/ \
		ftp://ftp.it.net.au/mirrors/Fortify/
MASTER_SITE_SUBDIR= communicator/english/${PROGRAM_V}/unix/unsupported/${LOCATION}
DIST_SUBDIR=	netscape

HOMEPAGE=	http://www.netscape.com/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

WRKDIST=	${WRKDIR}

.if !defined(NO_WARNINGS)
pre-fetch:
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
	@echo "           'option COMPAT_SUNOS' and SunOS shared libraries"
	@echo "           for proper operation, see compat_sunos(8) for"
	@echo "           further details. The GENERIC kernel contains"
	@echo "           this option."
	@echo ""
.endif
.endif

.if ${MACHINE_ARCH} == "sparc"
do-build:
	@cd ${WRKDIR}/${FORTIFY}/src/common && \
	env ${MAKE_ENV} make ${MAKE_FLAGS} ${MAKEFILE} all && \
	cd ${WRKDIR}/${FORTIFY}/src/cmdline && \
	env ${MAKE_ENV} make ${MAKE_FLAGS} ${MAKEFILE} fortify
.endif

do-install:
	@cd ${WRKDIR}/${DIRNAME} && ${MAKE_ENV} ./ns-install

post-install:
.if ${MACHINE_ARCH} == "sparc"
	@cp ${PREFIX}/netscape/netscape ${PREFIX}/netscape/netscape_nis
	@cp ${PREFIX}/netscape/netscape_dns ${PREFIX}/netscape/netscape
	@rm -f ${PREFIX}/netscape/netscape_dns
	@cd ${WRKDIR}/${FORTIFY} && \
	ln -sf languages/English Messages && \
	{ echo yes ; echo no ; echo no; } \
	| src/cmdline/fortify >/dev/null ${PREFIX}/netscape/netscape
	@cd ${WRKDIR}/${FORTIFY} && \
	{ echo yes ; echo no ; echo no; } \
	| src/cmdline/fortify >/dev/null ${PREFIX}/netscape/netscape_nis
.endif
	@sed -e 's#@netscape_home@#${TRUEPREFIX}/netscape#' \
	 ${FILESDIR}/netscape.${MACHINE_ARCH} > ${WRKDIR}/netscape
	${INSTALL_SCRIPT} ${WRKDIR}/netscape ${PREFIX}/bin
