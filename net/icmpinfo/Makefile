# $OpenBSD: Makefile,v 1.10 2002/05/15 17:42:24 espie Exp $

COMMENT=	"look at the icmp messages received by the host"

DISTNAME=	icmpinfo-1.11
CATEGORIES=	net sysutils
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_SUNSITE:=system/network/admin/}

MAINTAINER=     Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/icmpinfo
	${INSTALL_PROGRAM} ${WRKSRC}/icmpinfo ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/icmpinfo.man ${PREFIX}/man/man1/icmpinfo.1
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/icmpinfo

.include <bsd.port.mk>
