# OpenBSD makefile for: xfedor
# Version required:     1994 year version with Imakefile
# Date created:         May 19 1998
# Whom:                 Angelos D. Keromytis
#
# ATTENTION: It not work in > 256 colors modes, please fix it
# if you can.
#
# $OpenBSD: Makefile,v 1.2 1998/06/13 23:27:12 marc Exp $
#

DISTNAME=       xfedor
PKGNAME=        xfedor-1.0
CATEGORIES=	x11
MASTER_SITES=   ftp://ftp.kiarchive.ru/pub/x11/util/

OS_RELEASE!=	uname -r
OS_HAS_XPM=	2.3
.if ( ${OS_RELEASE} < ${OS_HAS_XPM} )
LIB_DEPENDS=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm
.endif

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
