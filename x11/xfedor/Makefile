# $OpenBSD: Makefile,v 1.7 2000/04/15 11:12:28 turan Exp $
# ATTENTION: It does not work in > 256 color modes, please fix
# it if you can.

DISTNAME=       xfedor
PKGNAME=        xfedor-1.0
CATEGORIES=	x11
MASTER_SITES=   ftp://ftp.kiarchive.ru/pub/x11/util/

MAINTAINER=     angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=		Yes
USE_IMAKE=      Yes

XFHELP= ${LOCALBASE}/lib/X11/xfedor # See patches too
XCAT1= ${LOCALBASE}/man/cat1

do-install:
	cd ${WRKSRC}; \
	${INSTALL_PROGRAM} xfedor ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${XFHELP}
	chown ${SHAREOWN}.${SHAREGRP} ${XFHELP}
	chmod 755 ${XFHELP}
	cd ${WRKSRC}/help; \
	${INSTALL_DATA} * ${XFHELP}
	${INSTALL_DATA} ${FILESDIR}/default.sos ${XFHELP}
	cd ${WRKSRC}; \
	${INSTALL_MAN} xfedor.txt ${XCAT1}/xfedor.1

.include <bsd.port.mk>
