# OpenBSD makefile for:		lsof
# Version required:     3.87
# Date created:         25 November 1997
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.5 1997/12/22 00:49:23 niklas Exp $
#

DISTNAME=	lsof_4.15_W
PKGNAME=	lsof-4.15
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.web.ad.jp/pub/UNIX/tools/lsof/  \
		ftp://ftp.sunet.se/pub/unix/admin/lsof/

MAINTAINER=     angelos@openbsd.org

WRKSRC=		${WRKDIR}/${SRCBALL_NAME}
HAS_CONFIGURE=	yes
CONFIGURE_SCRIPT=	Configure
CONFIGURE_ARGS=	-n openbsd
MAN1=		lsof.1

ONLY_FOR_ARCHS=	alpha amiga arc hp300 i386 mac68k mvme68k pmax sun3 wgrisc

SRCBALL_NAME=	${DISTNAME:S/_W$//}

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
	${INSTALL} ${COPY} ${STRIP} -o ${BINOWN} -g ${BINGRP} -m 2755 -g kmem ${WRKSRC}/lsof ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/lsof.man ${PREFIX}/man/man1/lsof.1
	@${MKDIR} ${PREFIX}/share/lsof
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/* ${PREFIX}/share/lsof
	@/bin/chmod 0444 ${PREFIX}/share/lsof/00*


.include <bsd.port.mk>
