# $OpenBSD: Makefile,v 1.4 2003/06/09 07:19:30 sturm Exp $

COMMENT=	"Cisco AAA protocol daemon"

DISTNAME=	tac_plus.F4.0.4.alpha
PKGNAME=	tacacs+-4.0.4a
CATEGORIES=	net security

HOMEPAGE=       http://www.gazi.edu.tr/tacacs/

MAINTAINER=	Srebrenko Sehic <haver@insecure.dk>

# BSD style, but without fee
PERMIT_PACKAGE_CDROM=   "may not sell"
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= "may not sell"
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=   ftp://ftpeng.cisco.com/pub/tacacs/ \
		ftp://ftp.isc.tamu.edu/pub/OpenBSD/distfiles/

EXTRACT_SUFX=   .tar.Z

TACACSUSER=	tacacs
TACACSGROUP=	${TACACSUSER}

ALL_TARGET=	tac_plus

NO_REGRESS=	Yes

SUBST_VARS=	TACACSUSER TACACSGROUP

do-configure:
	@perl -pi -e "s/%%TACACSUSER%%/${TACACSUSER}/;" \
		-e "s/%%TACACSGROUP%%/${TACACSGROUP}/;" ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tac_plus ${PREFIX}/sbin/
	${INSTALL_PROGRAM} ${WRKSRC}/generate_passwd ${PREFIX}/sbin/
	${INSTALL_MAN} ${WRKSRC}/tac_plus.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tacacs+
	${INSTALL_DATA} ${WRKSRC}/users_guide ${PREFIX}/share/doc/tacacs+/

.include <bsd.port.mk>
