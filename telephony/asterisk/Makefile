# $OpenBSD: Makefile,v 1.2 2004/12/05 15:15:20 alek Exp $

COMMENT=	"open source PBX"
DISTNAME=	asterisk-1.0.0
CATEGORIES=	telephony
MASTER_SITES=	http://mirrors.protection.cx/~jolan/ \
		ftp://ftp.asterisk.org/pub/telephony/asterisk/

HOMEPAGE=	http://www.asterisk.org/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c crypto m ncurses ossaudio pthread ssl

NO_REGRESS=	Yes
USE_GMAKE=	Yes

BUILD_DEPENDS=	:bison-*:devel/bison

MAKE_ENV+=	SYSCONFDIR='${SYSCONFDIR}'

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/asterisk
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/asterisk/agi
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/asterisk/default
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/asterisk/openbsd
	${INSTALL_DATA} ${FILESDIR}/BUGS.OpenBSD ${PREFIX}/share/doc/asterisk
	${INSTALL_DATA} ${WRKSRC}/{BUGS,SECURITY} ${PREFIX}/share/doc/asterisk
	${INSTALL_DATA} ${WRKSRC}/doc/README.* ${PREFIX}/share/doc/asterisk
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/asterisk
	${INSTALL_DATA} ${WRKSRC}/agi/agi-test.agi \
		${PREFIX}/share/examples/asterisk/agi
	${INSTALL_DATA} ${WRKSRC}/configs/* ${PREFIX}/share/examples/asterisk/default
	${INSTALL_DATA} ${FILESDIR}/*.sample ${PREFIX}/share/examples/asterisk/openbsd

.include <bsd.port.mk>
