# $OpenBSD: Makefile,v 1.12 2001/06/20 01:43:26 pvalchev Exp $

COMMENT=	"Robust Audio Tool from UCL"

DISTNAME=       rat-3.0
DISTFILES=	rat-3.0.33.tar.gz
CATEGORIES=	mbone
NEED_VERSION=	1.402
MASTER_SITES=   http://www-mice.cs.ucl.ac.uk/multimedia/software/rat/3.0.33/
MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	tcl80::lang/tcl/8.0 \
		tk80::x11/tk/8.0 \

post-extract:
	@cp ${FILESDIR}/buildcmd ${WRKSRC}/buildcmd
	@${CHMOD} 755 ${WRKSRC}/buildcmd

do-build:
	cd ${WRKSRC}; ${WRKSRC}/buildcmd

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/rat-${OPSYS}-${OPSYS_VER} ${PREFIX}/bin/rat

.include <bsd.port.mk>
