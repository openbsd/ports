# $OpenBSD: Makefile,v 1.2 2000/02/12 06:29:58 turan Exp $

DISTNAME=       rat-3.0
DISTFILES=	rat-3.0.33.tar.gz
CATEGORIES=	mbone
MASTER_SITES=   http://www-mice.cs.ucl.ac.uk/multimedia/software/rat/3.0.33/
MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

NEED_VERSION=	1.111

LIB_DEPENDS=	tcl80:${PORTSDIR}/lang/tcl80 \
		tk80:${PORTSDIR}/x11/tk80 \

post-extract:
	@${CP} ${FILESDIR}/buildcmd ${WRKSRC}/buildcmd
	@${CHMOD} 755 ${WRKSRC}/buildcmd

do-build:
	cd ${WRKSRC}; ${WRKSRC}/buildcmd

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/rat-${OPSYS}-${OPSYS_VER} ${PREFIX}/bin/rat

.include <bsd.port.mk>
