# $OpenBSD: Makefile,v 1.13 2006/10/19 21:19:07 jolan Exp $

COMMENT=	"open source PBX"
DISTNAME=	asterisk-1.2.13
CATEGORIES=	telephony
MASTER_SITES=	http://ftp.digium.com/pub/asterisk/releases/

HOMEPAGE=	http://www.asterisk.org/

MAINTAINER=	Stuart Henderson <stu@spacehopper.org>

# GPL except iaxy.bin (freely redistributable, see LICENSE)
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c crypto m ncurses pthread ssl z

MAKE_FLAGS=		CC="${CC} ${CFLAGS}"

NO_REGRESS=	Yes
USE_GMAKE=	Yes

MAKE_ENV+=	SYSCONFDIR='${SYSCONFDIR}' MAKEFLAGS+=-DWITHOUT_ZAPTEL

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/asterisk
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/asterisk/agi
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/asterisk/default
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/asterisk/openbsd
	${INSTALL_DATA} ${WRKSRC}/{BUGS,SECURITY} ${PREFIX}/share/doc/asterisk
	${INSTALL_DATA} ${WRKSRC}/doc/README.* ${PREFIX}/share/doc/asterisk
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/asterisk
	${INSTALL_DATA} ${WRKSRC}/agi/agi-test.agi \
		${PREFIX}/share/examples/asterisk/agi
	${INSTALL_DATA} ${WRKSRC}/configs/* ${PREFIX}/share/examples/asterisk/default
	${INSTALL_DATA} ${FILESDIR}/*.sample ${PREFIX}/share/examples/asterisk/openbsd

.include <bsd.port.mk>
