# $OpenBSD: Makefile.inc,v 1.7 2000/08/31 10:04:36 brad Exp $
#
# Relevant URLs:	http://www.bsdi.com/netscape/

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
MASTER_SITE_SUBDIR= communicator/english/${PROGRAM_V}/unix/unsupported/${LOCATION}
DIST_SUBDIR=	netscape

HOMEPAGE=	http://www.netscape.com/

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

WRKDIST=	${WRKDIR}/${DIRNAME}

.if !defined(NO_WARNINGS)
pre-fetch:
.if ${MACHINE_ARCH} == "i386"
	@echo ""
	@echo "  WARNING: This application requires a kernel compiled with"
	@echo "           'option COMPAT_BSDOS' for proper operation.  The"
	@echo "           GENERIC kernel contains this option."
	@echo ""
.endif
.endif

do-install:
	@cd ${WRKDIR}/${DIRNAME} && ${MAKE_ENV} ./ns-install

post-install:
	@sed -e 's#@netscape_home@#${TRUEPREFIX}/netscape#' \
	 ${FILESDIR}/netscape.${MACHINE_ARCH} > ${WRKDIR}/netscape
	${INSTALL_SCRIPT} ${WRKDIR}/netscape ${PREFIX}/bin
