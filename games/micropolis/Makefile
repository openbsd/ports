# $OpenBSD: Makefile,v 1.3 2008/01/19 21:23:40 ian Exp $

COMMENT=	city-building simulation

DISTNAME=	micropolis-activity-source
WRKDIST=	${WRKDIR}/micropolis-activity
PKGNAME=	micropolis-20080117p0

CATEGORIES=	games

HOMEPAGE=	http://www.donhopkins.com/home/micropolis/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Deanna Phillips <deanna@openbsd.org>
EXTRACT_SUFX=	.tgz

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
RUN_DEPENDS=	::audio/esound \
		::devel/desktop-file-utils

WANTLIB=	c m X11 Xext Xpm

pre-configure:
	@perl -pi -e s,%%PREFIX%%,${PREFIX}, ${WRKSRC}/Micropolis
	@perl -pi -e s,%%PREFIX%%,${PREFIX}, ${WRKSRC}/res/micropolis.tcl
	@perl -pi -e s,%%LOCALBASE%%,${LOCALBASE}, ${WRKSRC}/res/micropolis.tcl
	@perl -pi -e s,%%X11BASE%%,${X11BASE},g ${WRKSRC}/src/sim/makefile
	@perl -pi -e s,%%X11BASE%%,${X11BASE},g ${WRKSRC}/src/tclx/config.mk
	@perl -pi -e s,%%X11BASE%%,${X11BASE},g ${WRKSRC}/src/tk/makefile

do-build:
	@cd ${WRKSRC}/src && ${MAKE}

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/micropolis
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/micropolis
	@cd ${WRKSRC} && \
            find res -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/micropolis/{} \;
	@cd ${WRKSRC} && \
            find images -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/micropolis/{} \;
	@cd ${WRKSRC} && \
            find manual -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/micropolis/{} \;
	@cd ${WRKSRC} && \
            find res -type f -exec ${INSTALL_DATA} {} ${PREFIX}/share/micropolis/{} \;
	@cd ${WRKSRC} && \
            find images -type f -exec ${INSTALL_DATA} {} ${PREFIX}/share/micropolis/{} \;
	@cd ${WRKSRC} && \
            find manual -type f -exec ${INSTALL_DATA} {} ${PREFIX}/share/doc/micropolis/{} \;
	@${INSTALL_SCRIPT} ${WRKSRC}/Micropolis ${PREFIX}/bin/micropolis
	@${INSTALL_PROGRAM} ${WRKSRC}/src/sim/sim ${PREFIX}/libexec/sim
	@${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	@${INSTALL_DATA} ${WRKSRC}/Micropolis.png ${PREFIX}/share/pixmaps/micropolis.png
	@${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	@${INSTALL_DATA} ${FILESDIR}/micropolis.desktop ${PREFIX}/share/applications

.include <bsd.port.mk>
