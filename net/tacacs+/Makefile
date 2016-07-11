# $OpenBSD: Makefile,v 1.16 2016/07/11 10:28:15 sthen Exp $

COMMENT=	Cisco AAA protocol daemon

DISTNAME=	tac_plus.F4.0.4.alpha
PKGNAME=	tacacs+-4.0.4a
REVISION=	6
CATEGORIES=	net security

HOMEPAGE=       http://www.gazi.edu.tr/tacacs/

# BSD style, but without fee
PERMIT_PACKAGE_CDROM=   may not sell
PERMIT_PACKAGE_FTP=     Yes

WANTLIB=	c

MASTER_SITES=   ftp://ftpeng.cisco.com/pub/tacacs/

EXTRACT_SUFX=   .tar.Z

ALL_TARGET=	tac_plus

NO_TEST=	Yes

do-configure:
	@perl -pi -e "s/%%TACACSUSER%%/_tacacs/;" \
		-e "s/%%TACACSGROUP%%/_tacacs/;" ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tac_plus ${PREFIX}/sbin/
	${INSTALL_PROGRAM} ${WRKSRC}/generate_passwd ${PREFIX}/sbin/
	${INSTALL_MAN} ${WRKSRC}/tac_plus.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tacacs+
	${INSTALL_DATA} ${WRKSRC}/users_guide ${PREFIX}/share/doc/tacacs+/

.include <bsd.port.mk>
