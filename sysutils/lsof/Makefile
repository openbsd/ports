# $OpenBSD: Makefile,v 1.88 2013/05/23 15:08:36 dcoppa Exp $

COMMENT=	list information about open files

VERSION=	4.87
DISTNAME=	lsof_${VERSION}
PKGNAME=	${DISTNAME:S/_/-/}
CATEGORIES=	sysutils
MASTER_SITES=	http://www.mirrorservice.org/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/ \
		ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/ \
		ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/OLD/ \
		ftp://sunsite.ualberta.ca/pub/Mirror/lsof/ \
		ftp://sunsite.ualberta.ca/pub/Mirror/lsof/OLD/ \
		ftp://ftp.fu-berlin.de/pub/unix/tools/lsof/ \
		ftp://ftp.fu-berlin.de/pub/unix/tools/lsof/OLD/ \
		http://www.mirrorservice.org/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/OLD/

HOMEPAGE=	http://people.freebsd.org/~abe/

MAINTAINER=     Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c kvm>=13

MAKE_FLAGS=	DEBUG="${CFLAGS}"

CONFIGURE_STYLE= simple
CONFIGURE_SCRIPT= Configure
CONFIGURE_ARGS=	-n openbsd
CONFIGURE_ENV=	LSOF_CC="${CC}"

SRCBALL_NAME=	${DISTNAME}_src
WRKDIST=	${WRKDIR}/${DISTNAME}/${SRCBALL_NAME}

post-extract:
	cd ${WRKDIST}/.. ; grep MD5.*tar README.${DISTNAME} | \
		cksum -c - && tar -xf ${SRCBALL_NAME}.tar

pre-configure:
	@if [ ! -d /sys ]; then \
	    echo ""; \
	    echo "*** Error: Building this package requires the" ; \
	    echo "*** kernel sources to be available under /sys" ; \
	    echo ""; \
	    exit 1; \
	fi

NO_TEST=	Yes

do-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/lsof
	${INSTALL_PROGRAM} ${WRKBUILD}/lsof ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/lsof.8 ${PREFIX}/man/man8/lsof.8
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/* ${PREFIX}/share/lsof
	@chmod ${SHAREMODE} ${PREFIX}/share/lsof/00*

.include <bsd.port.mk>
