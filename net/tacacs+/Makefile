# $OpenBSD: Makefile,v 1.2 2002/03/21 21:09:20 espie Exp $

COMMENT=	"Cisco AAA protocol daemon"

DISTNAME=	tac_plus.F4.0.4.alpha
PKGNAME=	tacacs+-4.0.4a
CATEGORIES=	net security
NEED_VERSION=	1.515

HOMEPAGE=       http://www.gazi.edu.tr/tacacs/

MAINTAINER=	Jeff Bachtel <jeff@cepheid.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=   ftp://ftpeng.cisco.com/pub/tacacs/ \
		ftp://ftp.isc.tamu.edu/pub/OpenBSD/distfiles/

EXTRACT_SUFX=   .tar.Z

MAKE_FLAGS=	CC="${CC}" 
ALL_TARGET=	tac_plus

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tac_plus ${PREFIX}/sbin/
	${INSTALL_MAN} ${WRKSRC}/tac_plus.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tacacs+
	${INSTALL_DATA} ${WRKSRC}/users_guide ${PREFIX}/share/doc/tacacs+/

.include <bsd.port.mk>
