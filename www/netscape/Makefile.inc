# $OpenBSD: Makefile.inc,v 1.15 2002/05/15 17:58:50 espie Exp $
#
# Relevant URLs:	http://www.bsdi.com/netscape/
#			http://www.fortify.net/

# Subdirectory MUST define DIRNAME, LOCATION and PROGRAM_V.
# EMUL_TYPE


.if ${EMUL_TYPE} == "linux"
MAINTAINER=	Kevin Lo <kevlo@openbsd.org>
BUILD_DEPENDS=	::emulators/redhat/base 
RUN_DEPENDS=	${BUILD_DEPENDS}
SUPPORTED=	supported
ONLY_FOR_ARCHS=	i386
.endif

.if ${EMUL_TYPE} == "sunos"
ONLY_FOR_ARCHS=	sparc
.  if ${MACHINE_ARCH} == "sparc" && !exists(/emul/sunos/usr/lib/ld.so)
IGNORE=		"requires SunOS shared libraries"
.  endif
NEEDS_FORTIFY=	Yes
.endif

.if ${EMUL_TYPE} == "bsdi"
ONLY_FOR_ARCHS= i386
.endif

MAINTAINER?=	Brad Smith <brad@openbsd.org>
SUPPORTED?=	unsupported


CATEGORIES=     www
NEED_VERSION=	1.489
MASTER_SITES= \
	ftp://ftp.netscape.com/pub/$S/ \
	ftp://uiarchive.uiuc.edu/pub/www/netscape/$S/ \
	ftp://netscape.Mirror.McGill.CA/pub/mirrors/ftp.netscape.com/pub/$S/ \
	ftp://ftp.the.net/pub/mirrors/ftp.netscape.com/pub/$S/ \
	ftp://sunsite.doc.ic.ac.uk/packages/netscape/pub/$S/ \
	ftp://ftp-de.netscape.com/pub/$S/ \
	ftp://nic.funet.fi/pub/mirrors/ftp.netscape.com/pub/$S/
MASTER_SITES0= \
	ftp://archive.netscape.com/pub/$S/
MASTER_SITES1=	ftp://ftp.fortify.net/pub/Fortify/ \
		ftp://ftp.sunet.se/pub/security/tools/net/Fortify/ \
		ftp://ftp.funet.fi/pub/crypt/mirrors/fortify/ \
		ftp://ftp.it.net.au/mirrors/Fortify/
S= communicator/english/${PROGRAM_V}/unix/${SUPPORTED}/${LOCATION}
DIST_SUBDIR=	netscape

HOMEPAGE=	http://www.netscape.com/

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

WRKDIST=	${WRKDIR}


.if !defined(NO_WARNINGS)
pre-fetch:
.if ${EMUL_TYPE} == "bsdi"
	@echo ""
	@echo "  WARNING: This application requires a kernel compiled with"
	@echo "           'option COMPAT_BSDOS' for proper operation.  The"
	@echo "           GENERIC kernel contains this option."
	@echo ""
.endif
.if ${EMUL_TYPE} == "linux"
	@echo ""
	@echo "  WARNING: This application requires a kernel compiled with"
	@echo "           'option COMPAT_LINUX' for proper operation.  The"
	@echo "           GENERIC kernel contains this option."
	@echo ""
.endif
.if ${EMUL_TYPE} == "sunos"
	@echo ""
	@echo "  WARNING: This application requires a kernel compiled with"
	@echo "           'option COMPAT_SUNOS' and SunOS shared libraries"
	@echo "           for proper operation, see compat_sunos(8) for"
	@echo "           further details. The GENERIC kernel contains"
	@echo "           this option."
	@echo ""
.endif
.endif

.if defined(NEEDS_FORTIFY)
do-build:
	@cd ${WRKDIR}/${FORTIFY}/src/common && \
	env ${MAKE_ENV} make ${MAKE_FLAGS} ${MAKEFILE} all && \
	cd ${WRKDIR}/${FORTIFY}/src/cmdline && \
	env ${MAKE_ENV} make ${MAKE_FLAGS} ${MAKEFILE} fortify
.endif

do-install:
	@cd ${WRKDIR}/${DIRNAME} && ${MAKE_ENV} ./ns-install

post-install:
.if defined(NEEDS_FORTIFY)
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
