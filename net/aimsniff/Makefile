# $OpenBSD: Makefile,v 1.4 2013/03/11 11:35:45 espie Exp $
PKG_ARCH=	*

COMMENT=	utility for monitoring and archiving AOL Instant Messenger
DISTNAME=	aimsniff-0.9d
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=aimsniff/}

HOMEPAGE=	http://www.aimsniff.com/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes

RUN_DEPENDS=	converters/p5-Unicode-String \
		databases/p5-DBI \
		devel/p5-Proc-Daemon \
		devel/p5-Proc-Simple \
		net/p5-NetPacket \
		sysutils/p5-Unix-Syslog

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/aimSniff.pl ${PREFIX}/bin/aimsniff
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/aimsniff
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/aimsniff
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/aimsniff
	${INSTALL_DATA} ${WRKSRC}/aimsniff.config  ${WRKSRC}/rc.aimsniff \
		${WRKSRC}/table.struct ${PREFIX}/share/examples/aimsniff

.include <bsd.port.mk>
