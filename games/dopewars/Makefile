# $OpenBSD: Makefile,v 1.15 2000/09/24 07:04:05 brad Exp $

DISTNAME=	dopewars-1.4.8
CATEGORIES=	games
NEED_VERSION=	1.330
MASTER_SITES=	http://www.evansville.net/~goatpop/ \
		http://bellatrix.pcl.ox.ac.uk/~ben/dopewars/

HOMEPAGE=	http://bellatrix.pcl.ox.ac.uk/~ben/dopewars/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

DOCS=	index.html installation.html clientplay.html server.html \
	credits.html aiplayer.html configfile.html commandline.html \
	developer.html metaserver.html servercommands.html LICENCE \
	README

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dopewars
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dopewars
	${INSTALL_PROGRAM} ${WRKSRC}/dopewars ${PREFIX}/bin
	@chown root.games ${PREFIX}/bin/dopewars
	@chmod 2755 ${PREFIX}/bin/dopewars
	${INSTALL_DATA} ${WRKSRC}/example-cfg ${PREFIX}/share/examples/dopewars/dopewars-cfg.sample
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/dopewars

.include <bsd.port.mk>
