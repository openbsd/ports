# $OpenBSD: Makefile.inc,v 1.4 2000/07/06 23:22:21 brad Exp $
#
# Relevant URLs:	http://www.bsdi.com/netscape/
#			http://www.fortify.net/

CATEGORIES=     www
NEED_VERSION=	1.310
DIST_SUBDIR=	netscape

HOMEPAGE=	http://www.netscape.com/

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

# Subdirectory MUST define PROGRAM_V and LOCATION

MASTER_SITES= \
	http://wuarchive.wustl.edu/packages/www/Netscape/%SUBDIR%/ \
	ftp://netscape.Mirror.McGill.CA/pub/mirrors/ftp.netscape.com/pub/%SUBDIR%/ \
	ftp://ftp.netscape.com/pub/%SUBDIR%/ \
	ftp://uiarchive.uiuc.edu/pub/www/netscape/%SUBDIR%/ \
	ftp://ftp.the.net/pub/mirrors/ftp.netscape.com/pub/%SUBDIR%/ \
	ftp://sunsite.doc.ic.ac.uk/packages/netscape/pub/%SUBDIR%/ \
	ftp://ftp-de.netscape.com/pub/%SUBDIR%/ \
	ftp://ftp.heanet.ie/pub/netscape/%SUBDIR%/ \
	ftp://nic.funet.fi/pub/mirrors/ftp.netscape.com/pub/%SUBDIR%/ \
	ftp://sunsite.tut.fi/pub/Mirror/mirrorsite.netscape.com/pub/%SUBDIR%/

MASTER_SITES0=	ftp://ftp.fortify.net/pub/Fortify/ \
		ftp://ftp.sunet.se/pub/security/tools/net/Fortify/ \
		ftp://ftp.funet.fi/pub/crypt/mirrors/fortify/ \
		ftp://ftp.replay.com/pub/crypto/apache/Fortify/ \
		ftp://ftp.it.net.au/mirrors/Fortify/

FORTIFY=	Fortify-1.4.6-unix-src
DISTFILES=	${DISTNAME}.tar.gz \
		${FORTIFY}.tar.gz:0

MASTER_SITE_SUBDIR=communicator/english/${PROGRAM_V}/unix/unsupported/${LOCATION}

OBJMACHINE=	Yes
NO_CONFIGURE=	Yes
WRKDIST=	${WRKDIR}

MAINTAINER=	brad@openbsd.org

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

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -I. -I../common" \
		LDFLAGS="" YACC="yacc"

do-build:
	@cd ${WRKDIR}/${FORTIFY}/src/common && \
	env ${MAKE_ENV} make ${MAKE_FLAGS} ${MAKEFILE} all && \
	cd ${WRKDIR}/${FORTIFY}/src/cmdline && \
	env ${MAKE_ENV} make ${MAKE_FLAGS} ${MAKEFILE} fortify

do-install:
	@cd ${WRKDIR}/${DIRNAME} && ${MAKE_ENV} ./ns-install

post-install:
.if ${MACHINE_ARCH} == "sparc"
	@cp ${PREFIX}/netscape/netscape ${PREFIX}/netscape/netscape_nis
	@cp ${PREFIX}/netscape/netscape_dns ${PREFIX}/netscape/netscape
	@rm -f ${PREFIX}/netscape/netscape_dns
.endif
	@cd ${WRKDIR}/${FORTIFY} && \
	ln -sf languages/English Messages && \
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
