# $OpenBSD: Makefile,v 1.10 2000/03/24 22:11:42 espie Exp $

DISTNAME=	dopewars-1.4.7
CATEGORIES=	games
NEED_VERSION=	1.213
MASTER_SITES=	http://bellatrix.pcl.ox.ac.uk/~ben/dopewars/


MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

USE_GMAKE=	Yes
GNU_CONFIGURE=	Yes

DOCS=	index.html installation.html clientplay.html server.html \
	credits.html aiplayer.html configfile.html commandline.html \
	developer.html metaserver.html servercommands.html LICENCE \
	README

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dopewars
	${INSTALL_PROGRAM} ${WRKSRC}/dopewars ${PREFIX}/bin
	@chown root.games ${PREFIX}/bin/dopewars
	@chmod 2755 ${PREFIX}/bin/dopewars
	${INSTALL_DATA} ${WRKSRC}/example-cfg ${PREFIX}/share/doc/dopewars/dopewars-cfg.sample
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/dopewars

.include <bsd.port.mk>
