# $OpenBSD: Makefile,v 1.10 1999/02/18 19:27:35 marc Exp $
#

DISTNAME=	lsof_4.40_W
DIST_SUBDIR=	lsof
PKGNAME=	lsof-4.40
CATEGORIES=	sysutils

MAINTAINER=     angelos@openbsd.org

MASTER_SITES=	ftp://vic.cc.purdue.edu/pub/tools/unix/lsof/ \
		ftp://ftp.crc.doc.ca/packages/lsof/ \
		ftp://ftp.sunet.se/pub/unix/admin/lsof/

PATCH_SITES=	ftp://vic.cc.purdue.edu/pub/tools/unix/lsof/patches/4.40/ \
		ftp://ftp.crc.doc.ca/packages/lsof/

PATCHFILES=	arg.c.patch

HAS_CONFIGURE=	yes
CONFIGURE_SCRIPT=	Configure
CONFIGURE_ARGS=	-n openbsd

NO_PACKAGE=	compile from source to set proper options

SRCBALL_NAME=	${DISTNAME:S/_W$//}
WRKSRC=		${WRKDIR}/${SRCBALL_NAME}


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
	@${ECHO} ""
	@${ECHO} "*** when building for a sparc you must specify one of"
	@${ECHO} "***	SUN4=YES, SUN4C=YES, or SUN4M=YES"
	@${ECHO} "*** on the make command line"
	@${ECHO} ""
	@false
.endif
.endif

post-extract:
	@( cd ${WRKDIR} ; \
	EXPMD5=`/usr/bin/grep MD5 README.${SRCBALL_NAME} | sed 's/^[ ]*//'` ; \
	CALCMD5=`${MD5} ${SRCBALL_NAME}.tar` ; \
	if [ "$${EXPMD5}"X != "$${CALCMD5}"X ]; then \
		echo "Expected and calculated MD5 signatures don't agree." ; \
		echo "($$EXPMD5 != $$CALCMD5)" ; \
		exit 1 ; \
	fi ; \
	${EXTRACT_CMD} ${EXTRACT_BEFORE_ARGS:S/z//} ${SRCBALL_NAME}.tar \
	)
	@( cd ${WRKSRC} ; echo "y" | ./Inventory || exit 1 )


do-install:
	${INSTALL} ${COPY} ${STRIP} -o ${BINOWN} -g ${BINGRP} -m 0755 ${WRKSRC}/lsof ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/lsof.man ${PREFIX}/man/man1/lsof.1
	@${MKDIR} ${PREFIX}/share/lsof
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/* ${PREFIX}/share/lsof
	@/bin/chmod 0444 ${PREFIX}/share/lsof/00*


.include <bsd.port.mk>
