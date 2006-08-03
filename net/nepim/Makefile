# $OpenBSD: Makefile,v 1.3 2006/08/03 23:15:58 espie Exp $

COMMENT=		"network pipe meter"

DISTNAME=		nepim-0.32
PKGNAME=		${DISTNAME}p0
CATEGORIES=		net sysutils

HOMEPAGE=		http://www.nongnu.org/nepim/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB= c

MASTER_SITES=		http://download.savannah.gnu.org/releases/nepim/

LIB_DEPENDS=		oop.>=4::devel/liboop

USE_GMAKE=		Yes

NO_REGRESS=		Yes

WRKSRC=         	${WRKDIST}/src
ALL_TARGET=		default

do-configure:
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},' ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nepim ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nepim
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/nepim

.include <bsd.port.mk>
