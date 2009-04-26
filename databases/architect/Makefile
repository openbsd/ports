# $OpenBSD: Makefile,v 1.9 2009/04/26 09:38:25 sthen Exp $

PKG_ARCH=		*

COMMENT=		database exploration/builder written in Java

V=			1.0.0
DISTNAME=		Architect-generic-${V}
PKGNAME=		architect-${V}p2
CATEGORIES=		databases
WRKDIST=		${WRKDIR}	# no subdirectory

HOMEPAGE=		http://www.sqlpower.ca/page/architect

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# Custom non-open-source license "...free for individual use" and 
# "You may redistribute unmodified copies..." See $HOMEPAGE.
PERMIT_PACKAGE_CDROM=	not allowed to charge a fee
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	not allowed to charge a fee
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.sqlpower.ca/architect/${V}/ \
			ftp://ftp.darwinsys.com/pub/OpenBSD/distfiles/

MODULES=		java
MODJAVA_VER=	1.5+

NO_BUILD=		Yes
NO_REGRESS=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/architect/jdbc
	${INSTALL_DATA} ${WRKDIST}/architect.jar ${WRKDIST}/lib/* ${PREFIX}/architect/
	${INSTALL_DATA} ${WRKDIST}/jdbc/default_database_types.ini ${PREFIX}/architect/jdbc
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/architect
	${INSTALL_DATA} ${WRKDIST}/PowerArchitectUserGuide.pdf ${PREFIX}/share/doc/architect
	${INSTALL_PROGRAM} ${FILESDIR}/architect ${PREFIX}/bin 

.include <bsd.port.mk>
