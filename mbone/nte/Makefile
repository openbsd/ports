# $OpenBSD: Makefile,v 1.14 2000/10/22 14:03:26 espie Exp $

DISTNAME=       nte-1.7.0
CATEGORIES=	mbone
NEED_VERSION=	1.230
MASTER_SITES=   http://www-mice.cs.ucl.ac.uk/multimedia/software/nte/1.7.0/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${PREFIX}/lib/libcommon.a::mbone/common
LIB_DEPENDS=	tcl80.1.5::lang/tcl/8.0 \
		tk80.1.5::x11/tk/8.0

USE_GMAKE=	Yes
HAS_CONFIGURE=	Yes
FAKE=		Yes

WRKDIST=		${WRKDIR}/nte

post-extract:
	@cp ${FILESDIR}/Makefile.work ${WRKSRC}/Makefile
	@cp ${FILESDIR}/configure ${WRKSRC}
	@${CHMOD} 755 ${WRKSRC}/configure

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/linux/nte ${PREFIX}/bin

.include <bsd.port.mk>
