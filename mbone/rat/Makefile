# $OpenBSD: Makefile,v 1.4 2000/02/16 10:52:12 espie Exp $

DISTNAME=       rat-3.0
DISTFILES=	rat-3.0.33.tar.gz
CATEGORIES=	mbone
MASTER_SITES=   http://www-mice.cs.ucl.ac.uk/multimedia/software/rat/3.0.33/
MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

NEED_VERSION=	1.111

LIB_DEPENDS=	tcl80:${PORTSDIR}/lang/tcl80 \
		tk80:${PORTSDIR}/x11/tk80 \

post-extract:
	@cp ${FILESDIR}/buildcmd ${WRKSRC}/buildcmd
	@${CHMOD} 755 ${WRKSRC}/buildcmd

do-build:
	cd ${WRKSRC}; ${WRKSRC}/buildcmd

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/rat-${OPSYS}-${OPSYS_VER} ${PREFIX}/bin/rat

.include <bsd.port.mk>
