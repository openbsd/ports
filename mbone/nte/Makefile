# $OpenBSD: Makefile,v 1.21 2002/12/23 00:37:51 pvalchev Exp $

COMMENT=	"Network Text Editor multicast tool from UCL"

DISTNAME=	nte-1.7.0
CATEGORIES=	mbone

MASTER_SITES=   http://www-mice.cs.ucl.ac.uk/multimedia/software/nte/1.7.0/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	::mbone/common
LIB_DEPENDS=	tcl80.1.5::lang/tcl/8.0 \
		tk80.1.5::x11/tk/8.0

USE_GMAKE=	Yes
CONFIGURE_STYLE=simple

WRKDIST=	${WRKDIR}/nte

NO_REGRESS=	Yes

post-extract:
	@cp ${FILESDIR}/Makefile.work ${WRKSRC}/Makefile
	@cp ${FILESDIR}/configure ${WRKSRC}
	@${CHMOD} 755 ${WRKSRC}/configure

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/linux/nte ${PREFIX}/bin

.include <bsd.port.mk>
