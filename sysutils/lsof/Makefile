# $OpenBSD: Makefile,v 1.24 2000/03/24 22:12:00 espie Exp $

DISTNAME=	lsof_4.49C.n+obsd
PKGNAME=	lsof-4.49C
CATEGORIES=	sysutils
NEED_VERSION=	1.191
MASTER_SITES=	ftp://vic.cc.purdue.edu/pub/tools/unix/lsof/NEW/ \
		ftp://ftp.crc.doc.ca/packages/lsof/ \
		ftp://ftp.sunet.se/pub/unix/admin/lsof/

NO_PACKAGE=	"compile from source to set proper options"


MAINTAINER=     angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

HAS_CONFIGURE=	yes
CONFIGURE_SCRIPT= Configure
CONFIGURE_ARGS=	-n openbsd

SRCBALL_NAME=	${DISTNAME:S/_W$//}
WRKDIST=	${WRKDIR}/${SRCBALL_NAME}

.if ( ${MACHINE_ARCH} == "sparc" )
IS_INTERACTIVE=	yes
.if defined( SUN4 )
CDEF=-DSUN4
.endif
.if defined( SUN4C )
CDEF=-DSUN4C
.endif
.if defined( SUN4M )
CDEF=-DSUN4M
.endif
MAKE_ENV += "CDEF=${CDEF}"
.if !defined( CDEF )
pre-build:
	@echo
	@echo "*** when building for a sparc you must specify one of"
	@echo "***	SUN4=YES, SUN4C=YES, or SUN4M=YES"
	@echo "*** on the make command line"
	@echo
.endif
.endif

post-extract:
	@(cd ${WRKDIR} ; \
	EXPMD5=`/usr/bin/grep MD5 README.${SRCBALL_NAME} | \
	    /usr/bin/sed 's/^[ ]*//'` ; \
	CALCMD5=`md5 ${SRCBALL_NAME}.tar` ; \
	if [ "$${EXPMD5}"X != "$${CALCMD5}"X ]; then \
	    echo "Expected and calculated MD5 signatures don't agree." ; \
	    echo "($$EXPMD5 != $$CALCMD5)" ; \
	    exit 1 ; \
	fi ; \
	${TAR} -xf ${SRCBALL_NAME}.tar \
	)
	@(cd ${WRKSRC}; echo "y" | ./Inventory || exit 1)


do-install:
	${INSTALL_PROGRAM} -o ${BINOWN} -g ${BINGRP} -m 0755 \
	    ${WRKSRC}/lsof ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/lsof.man ${PREFIX}/man/man1/lsof.1
	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/lsof
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/* ${PREFIX}/share/lsof
	@${CHMOD} 0444 ${PREFIX}/share/lsof/00*

.include <bsd.port.mk>
