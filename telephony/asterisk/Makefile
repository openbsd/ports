# $OpenBSD: Makefile,v 1.4 2005/05/09 16:50:05 jcs Exp $

COMMENT=	"open source PBX"
DISTNAME=	asterisk-1.0.7
PKGNAME=	${DISTNAME}p0
CATEGORIES=	telephony
MASTER_SITES=	ftp://ftp.asterisk.org/pub/telephony/asterisk/ \
		http://mirrors.protection.cx/~jolan/

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
RUN_DEPENDS=	:mpg123-*:audio/mpg123 \
		:sox-*:audio/sox

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
