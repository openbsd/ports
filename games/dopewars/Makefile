# $OpenBSD: Makefile,v 1.7 2000/03/18 03:56:51 brad Exp $

DISTNAME=	dopewars-1.4.6
CATEGORIES=	games
MASTER_SITES=	http://bellatrix.pcl.ox.ac.uk/~ben/dopewars/

NEED_VERSION=	1.213

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -Wall" LIBS="-lcurses"

DOCS=	index.html installation.html clientplay.html server.html \
	credits.html aiplayer.html configfile.html commandline.html \
	developer.html metaserver.html servercommands.html LICENCE \
	README

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dopewars
	${INSTALL_PROGRAM} ${WRKSRC}/dopewars ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/example-cfg ${PREFIX}/share/doc/dopewars/dopewars-cfg.sample
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/dopewars

.include <bsd.port.mk>
