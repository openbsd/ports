# OpenBSD makefile for: 	  icmpinfo
# Version required:     	  1.11
# Date created:			  Mon June 23, 1997
# Whom:				  Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 2000/02/11 01:10:08 espie Exp $
#

DISTNAME=	icmpinfo-1.11
CATEGORIES=	net sysutils
MASTER_SITES=	ftp://hplyot.obspm.fr/net/

MAINTAINER=     angelos@openbsd.org

ALL_TARGET=
MAN1=		icmpinfo.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/icmpinfo ${PREFIX}/bin
	/usr/sbin/chown root ${PREFIX}/bin/icmpinfo
	/bin/chmod 4555 ${PREFIX}/bin/icmpinfo
	${INSTALL_MAN} ${WRKSRC}/icmpinfo.man ${PREFIX}/man/man1/${MAN1}
.if !defined(NOPORTDOCS)
	@mkdir -p ${PREFIX}/share/doc/icmpinfo
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/icmpinfo
.endif


.include <bsd.port.mk>
