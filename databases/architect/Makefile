# $OpenBSD: Makefile,v 1.2 2007/01/22 00:34:34 ian Exp $

PKG_ARCH=		*

COMMENT=		"database exploration/builder written in Java"

V=			0.9.1
DISTNAME=		Architect-generic-${V}
PKGNAME=		architect-${V}
CATEGORIES=		databases
WRKDIST=		${WRKDIR}	# no subdirectory

HOMEPAGE=		http://www.sqlpower.ca/

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# Custom non-open-source license "...free for individual use" and 
# "You may redistribute unmodified copies..."
PERMIT_PACKAGE_CDROM=	"not allowed to charge a fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"not allowed to charge a fee"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.sqlpower.ca/architect/${V}/ \
			ftp://ftp.darwinsys.com/pub/OpenBSD/distfiles/

MODULES=		Java
MODJAVA_VER=	1.5+

NO_BUILD=		Yes
NO_REGRESS=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/architect/
	${INSTALL_DATA} ${WRKDIST}/architect.jar ${WRKDIST}/lib/* ${PREFIX}/architect/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/architect
	${INSTALL_DATA} ${WRKDIST}/{LICENSE,PowerArchitectUserGuide.pdf} ${PREFIX}/share/doc/architect
	${INSTALL_PROGRAM} ${FILESDIR}/architect ${PREFIX}/bin 

.include <bsd.port.mk>
