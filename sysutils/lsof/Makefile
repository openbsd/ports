# $OpenBSD: Makefile,v 1.17 1999/11/01 06:13:35 angelos Exp $

DISTNAME=	lsof_4.46_W
PKGNAME=	lsof-4.46
CATEGORIES=	sysutils
MASTER_SITES=	ftp://vic.cc.purdue.edu/pub/tools/unix/lsof/ \
		ftp://ftp.crc.doc.ca/packages/lsof/ \
		ftp://ftp.sunet.se/pub/unix/admin/lsof/

NO_PACKAGE=	"compile from source to set proper options"

NEED_VERSION=	1.114

MAINTAINER=     angelos@openbsd.org

HAS_CONFIGURE=	yes
CONFIGURE_SCRIPT= Configure
CONFIGURE_ARGS=	-n openbsd

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
	@${FALSE}
.endif
.endif

post-extract:
	@(cd ${WRKDIR} ; \
	EXPMD5=`${GREP} MD5 README.${SRCBALL_NAME} | ${SED} 's/^[ ]*//'` ; \
	CALCMD5=`${MD5} ${SRCBALL_NAME}.tar` ; \
	if [ "$${EXPMD5}"X != "$${CALCMD5}"X ]; then \
		${ECHO} "Expected and calculated MD5 signatures don't agree." ; \
		${ECHO} "($$EXPMD5 != $$CALCMD5)" ; \
		exit 1 ; \
	fi ; \
	${TAR} -xf ${SRCBALL_NAME}.tar \
	)
	@(cd ${WRKSRC};${ECHO} "y" | ./Inventory || exit 1)


do-install:
	${INSTALL_PROGRAM} -o ${BINOWN} -g ${BINGRP} -m 0755 ${WRKSRC}/lsof ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/lsof.man ${PREFIX}/man/man1/lsof.1
	@${MKDIR} ${PREFIX}/share/lsof
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/* ${PREFIX}/share/lsof
	@${CHMOD} 0444 ${PREFIX}/share/lsof/00*

.include <bsd.port.mk>
