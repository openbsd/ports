# $OpenBSD: Makefile,v 1.27 2006/11/18 17:32:55 ajacoutot Exp $

COMMENT=	"command line tool to synchronize Palm pilot to AvantGo"

DISTNAME=	malsync_2.2.0.src
PKGNAME=	${DISTNAME:S/_/-/:S/.src//}
CATEGORIES=	comms palm

MASTER_SITES=	http://www.obsd.fr/OpenBSD/distfiles/ \
		http://ftp.belnet.be/mirror/rsync.gentoo.org/gentoo/distfiles/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

LIB_DEPENDS=	pisock.>=9::comms/pilot-link

USE_GMAKE=	Yes
WRKSRC=		${WRKDIR}/malsync
WRKDIST=	${WRKSRC}

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/malsync ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/malsync
.for i in README_AvantGo README_malsync
	${INSTALL_DATA} ${WRKSRC}/Doc/${i} ${PREFIX}/share/doc/malsync
.endfor

.include <bsd.port.mk>
