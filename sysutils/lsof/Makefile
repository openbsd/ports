# $OpenBSD: Makefile,v 1.29 2000/09/02 03:26:56 brad Exp $

DISTNAME=	lsof_4.51_W
PKGNAME=	lsof-4.51_W
CATEGORIES=	sysutils
NEED_VERSION=	1.322
MASTER_SITES=	ftp://vic.cc.purdue.edu/pub/tools/unix/lsof/ \
		ftp://ftp.crc.doc.ca/packages/lsof/ \
		ftp://ftp.sunet.se/pub/unix/admin/lsof/

MAINTAINER=     angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	DEBUG="${CFLAGS}"

CONFIGURE_STYLE= simple
CONFIGURE_SCRIPT= Configure
CONFIGURE_ARGS=	-n openbsd
CONFIGURE_ENV=	LSOF_CC="${CC}"

SRCBALL_NAME=	${DISTNAME:S/_W$//}

WRKDIST=	${WRKDIR}/${SRCBALL_NAME}

.if ${MACHINE_ARCH} == "sparc"
IS_INTERACTIVE=	Yes
.if defined(SUN4) && ${SUN4:U} == YES
CDEF=-DSUN4
.elif defined(SUN4C) && ${SUN4C:U} == YES
CDEF=-DSUN4C
.elif defined(SUN4M) && ${SUN4M:U} == YES
CDEF=-DSUN4M
.endif
MAKE_ENV=	CDEF="${CDEF}"
.if !defined(CDEF)
pre-build:
	@echo
	@echo "*** when building for a sparc you must specify one of"
	@echo "***	SUN4=Yes, SUN4C=Yes, or SUN4M=Yes"
	@echo "*** on the make command line"
	@echo
.endif
.endif

post-extract:
	@(cd ${WRKDIR}; \
	EXPMD5=`/usr/bin/grep MD5 README.${SRCBALL_NAME} | \
	    /usr/bin/sed 's/^[ ]*//'` ; \
	CALCMD5=`md5 ${SRCBALL_NAME}.tar` ; \
	if [ "$${EXPMD5}"X != "$${CALCMD5}"X ]; then \
	    echo "Expected and calculated MD5 signatures don't agree." ; \
	    echo "($$EXPMD5 != $$CALCMD5)" ; \
	    exit 1 ; \
	fi ; \
	tar -xf ${SRCBALL_NAME}.tar)
	@(cd ${WRKSRC}; echo "y" | ./Inventory || exit 1)

do-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/lsof
	${INSTALL_PROGRAM} ${WRKBUILD}/lsof ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/lsof.man ${PREFIX}/man/cat8/lsof.8
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/* ${PREFIX}/share/lsof
	@chmod 444 ${PREFIX}/share/lsof/00*

.include <bsd.port.mk>
