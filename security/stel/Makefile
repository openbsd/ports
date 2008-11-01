# $OpenBSD: Makefile,v 1.23 2008/11/01 00:04:13 jasper Exp $

COMMENT=	Secure Telnet, encrypted version of the telnet daemon

DISTNAME=	stel
PKGNAME=	${DISTNAME}-19960505p0
CATEGORIES=	security

MASTER_SITES=	ftp://ftp.ox.ac.uk/pub/crypto/misc/ \
		ftp://ftp.mupad.de/pub/crypto/misc/ \
		ftp://ftp.st.ryukoku.ac.jp/pub/security/tool/stel/ \
      		ftp://ftp.funet.fi/pub/mirrors/ftp.ox.ac.uk/pub/crypto/misc/ 

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c des m skey

LIB_DEPENDS=	gmp::devel/gmp

WRKDIST=	${WRKDIR}

ALL_TARGET=	bsdi

NO_REGRESS=	Yes

post-extract:
	@rm ${WRKSRC}/stel/login.c.orig

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/stel/stel ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/stel/steld ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/man/stel.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/man/steld.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
