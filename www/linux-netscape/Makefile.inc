# $OpenBSD: Makefile.inc,v 1.2 2001/07/05 13:08:27 brad Exp $
#
# Subdirectory MUST define DIRNAME, LOCATION and PROGRAM_V.

CATEGORIES=     www
NEED_VERSION=	1.414

HOMEPAGE=	http://www.netscape.com/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

MASTER_SITES= \
	ftp://ftp.netscape.com/pub/%SUBDIR%/ \
	ftp://uiarchive.uiuc.edu/pub/www/netscape/%SUBDIR%/ \
	ftp://netscape.Mirror.McGill.CA/pub/mirrors/ftp.netscape.com/pub/%SUBDIR%/ \
	ftp://ftp.the.net/pub/mirrors/ftp.netscape.com/pub/%SUBDIR%/ \
	ftp://sunsite.doc.ic.ac.uk/packages/netscape/pub/%SUBDIR%/ \
	ftp://ftp-de.netscape.com/pub/%SUBDIR%/ \
	ftp://nic.funet.fi/pub/mirrors/ftp.netscape.com/pub/%SUBDIR%/
MASTER_SITE_SUBDIR= communicator/english/${PROGRAM_V}/unix/supported/${LOCATION}
DIST_SUBDIR=	linux-netscape

BUILD_DEPENDS=	/emul/linux/lib/ld.so::emulators/redhat_base 
RUN_DEPENDS=	${BUILD_DEPENDS}

WRKDIST=	${WRKDIR}

do-install:
	@cd ${WRKDIR}/${DIRNAME} && ${MAKE_ENV} ./ns-install

post-install:
	@sed -e 's#@netscape_home@#${TRUEPREFIX}/netscape#' \
	 ${FILESDIR}/netscape.${MACHINE_ARCH} > ${WRKDIR}/netscape
	${INSTALL_SCRIPT} ${WRKDIR}/netscape ${PREFIX}/bin
