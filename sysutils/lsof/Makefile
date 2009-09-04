# $OpenBSD: Makefile,v 1.67 2009/09/04 01:49:10 sthen Exp $

COMMENT=	list information about open files

VERSION=	4.82
DISTNAME=	lsof_${VERSION}
PKGNAME=	${DISTNAME:S/_/-/}p0
CATEGORIES=	sysutils
MASTER_SITES=	ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/ \
		ftp://ftp.fu-berlin.de/pub/unix/tools/lsof/ \
		ftp://www.mirrorservice.org/sites/vic.cc.purdue.edu/pub/tools/unix/lsof/

MAINTAINER=     Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c kvm

MAKE_FLAGS=	DEBUG="${CFLAGS}"

CONFIGURE_STYLE= simple
CONFIGURE_SCRIPT= Configure
CONFIGURE_ARGS=	-n openbsd
CONFIGURE_ENV=	LSOF_CC="${CC}"

SRCBALL_NAME=	${DISTNAME}_src
WRKDIST=	${WRKDIR}/${DISTNAME}/${SRCBALL_NAME}

post-extract:
	@(cd ${WRKDIST}/..; \
	EXPMD5=`/usr/bin/grep "MD5 (" README.${DISTNAME} | \
	    /usr/bin/sed 's/^[ ]*//'` ; \
	CALCMD5=`md5 ${SRCBALL_NAME}.tar` ; \
	if [ "$${EXPMD5}"X != "$${CALCMD5}"X ]; then \
	    echo "Expected and calculated MD5 signatures don't agree." ; \
	    echo "($$EXPMD5 != $$CALCMD5)" ; \
	    exit 1 ; \
	fi ; \
	tar -xf ${SRCBALL_NAME}.tar)

pre-configure:
	@if [ ! -d /sys ]; then \
	    echo ""; \
	    echo "*** Error: Building this package requires the" ; \
	    echo "*** kernel sources to be available under /sys" ; \
	    echo ""; \
	    exit 1; \
	fi

NO_REGRESS=	Yes

do-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/lsof
	${INSTALL_PROGRAM} ${WRKBUILD}/lsof ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/lsof.man ${PREFIX}/man/cat8/lsof.0
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/* ${PREFIX}/share/lsof
	@chmod 444 ${PREFIX}/share/lsof/00*

.include <bsd.port.mk>
