# $OpenBSD: Makefile,v 1.16 2001/05/06 03:46:24 lebel Exp $

COMMENT=	"Secure Telnet, encrypted version of the telnet daemon"

DISTNAME=	stel
PKGNAME=	${DISTNAME}-19960505
CATEGORIES=	security
NEED_VERSION=	1.402
MASTER_SITES=	ftp://ftp.ox.ac.uk/pub/crypto/misc/ \
		ftp://ftp.mupad.de/pub/crypto/misc/ \
		ftp://ftp.st.ryukoku.ac.jp/pub/security/tool/stel/

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}

ALL_TARGET=	bsdi

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/stel/stel ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/stel/steld ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/man/stel.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/man/steld.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
