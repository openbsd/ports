# $OpenBSD: Makefile,v 1.3 1999/04/09 02:27:19 brad Exp $
# ATTENTION: It does not work in > 256 color modes, please fix
# it if you can.

DISTNAME=       xfedor
PKGNAME=        xfedor-1.0
CATEGORIES=	x11
MASTER_SITES=   ftp://ftp.kiarchive.ru/pub/x11/util/

MAINTAINER=     angelos@openbsd.org

USE_IMAKE=      yes

XFHELP= ${X11BASE}/lib/X11/xfedor # See patches too
XCAT1= ${X11BASE}/man/cat1

do-install:
	cd ${WRKSRC}; \
	${INSTALL_PROGRAM} xfedor ${PREFIX}/bin
	-mkdir -p ${XFHELP}
	chown ${SHAREOWN}.${SHAREGRP} ${XFHELP}
	chmod 755 ${XFHELP}
	cd ${WRKSRC}/help; \
	${INSTALL_DATA} * ${XFHELP}
	${INSTALL_DATA} ${FILESDIR}/default.sos ${XFHELP}
	cd ${WRKSRC}; \
	${INSTALL_MAN} xfedor.txt ${XCAT1}/xfedor.1

.include <bsd.port.mk>
