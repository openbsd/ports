# $OpenBSD: Makefile,v 1.5 2008/01/21 12:14:04 espie Exp $

COMMENT=	city-building simulation

DISTNAME=	micropolis-activity-source
WRKDIST=	${WRKDIR}/micropolis-activity
WRKSRC=		${WRKDIST}/src
MAKE_FILE=	makefile
PKGNAME=	micropolis-20080117p1

CATEGORIES=	games

HOMEPAGE=	http://www.donhopkins.com/home/micropolis/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Deanna Phillips <deanna@openbsd.org>
EXTRACT_SUFX=	.tgz

# GPLv3
# beware of SimCity, tm of Electronic Arts
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes
USE_X11=	Yes
RUN_DEPENDS=	::audio/esound \
		::devel/desktop-file-utils

WANTLIB=	c m X11 Xext Xpm

do-configure:
	@perl -pi -e s,%%PREFIX%%,${PREFIX}, ${WRKDIST}/Micropolis
	@perl -pi -e s,%%PREFIX%%,${PREFIX}, ${WRKDIST}/res/micropolis.tcl
	@perl -pi -e s,%%LOCALBASE%%,${LOCALBASE}, ${WRKDIST}/res/micropolis.tcl
	@perl -pi -e s,%%X11BASE%%,${X11BASE},g ${WRKSRC}/sim/makefile
	@perl -pi -e s,%%X11BASE%%,${X11BASE},g ${WRKSRC}/tclx/config.mk
	@perl -pi -e s,%%X11BASE%%,${X11BASE},g ${WRKSRC}/tk/makefile

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/micropolis
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/micropolis
	@cd ${WRKDIST} && \
            find res -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/micropolis/{} \;
	@cd ${WRKDIST} && \
            find images -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/micropolis/{} \;
	@cd ${WRKDIST} && \
            find manual -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/micropolis/{} \;
	@cd ${WRKDIST} && \
            find res -type f -exec ${INSTALL_DATA} {} ${PREFIX}/share/micropolis/{} \;
	@cd ${WRKDIST} && \
            find images -type f -exec ${INSTALL_DATA} {} ${PREFIX}/share/micropolis/{} \;
	@cd ${WRKDIST} && \
            find manual -type f -exec ${INSTALL_DATA} {} ${PREFIX}/share/doc/micropolis/{} \;
	@${INSTALL_SCRIPT} ${WRKDIST}/Micropolis ${PREFIX}/bin/micropolis
	@${INSTALL_PROGRAM} ${WRKSRC}/sim/sim ${PREFIX}/libexec/sim
	@${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	@${INSTALL_DATA} ${WRKDIST}/Micropolis.png ${PREFIX}/share/pixmaps/micropolis.png
	@${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	@${INSTALL_DATA} ${FILESDIR}/micropolis.desktop ${PREFIX}/share/applications

.include <bsd.port.mk>
