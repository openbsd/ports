# $OpenBSD: Makefile,v 1.1.1.1 2009/03/10 13:43:05 stsp Exp $

COMMENT = 	command-line .torrent file creator

DISTNAME = 	mktorrent-0.9.9
CATEGORIES = 	net
HOMEPAGE = 	http://borg.uu3.net/~borg/
MAINTAINER = 	Stefan Sperling <stsp@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM = 		Yes
PERMIT_PACKAGE_FTP = 		Yes
PERMIT_DISTFILES_CDROM = 	Yes
PERMIT_DISTFILES_FTP = 		Yes

WANTLIB = 	c crypto

MASTER_SITES = 	ftp://borg.uu3.net/pub/unix/mktorrent/
EXTRACT_SUFX = 	.tgz

NO_REGRESS = 	Yes

WRKDIST = 	${WRKDIR}/mktorrent

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mktorrent ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mktorrent
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/mktorrent

.include <bsd.port.mk>
