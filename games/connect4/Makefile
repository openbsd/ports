# $OpenBSD: Makefile,v 1.10 2000/03/26 16:50:38 espie Exp $

DISTNAME=	connect4
PKGNAME=	connect4-3.2
CATEGORIES=	games
NEED_VERSION=	1.230
MASTER_SITES=	ftp://scitsc.wlv.ac.uk/pub/infomagic/usenet/games/volume6/
EXTRACT_SUFX=		# empty

EXTRACT_CMD=		gunshar
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS=	# empty

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes


BUILD_DEPENDS=	gunshar::archivers/gshar+gunshar
MAKE_FLAGS=	CFLAGS='${CFLAGS} -DSCOREFILE=\"${SCOREFILE}\"'
FAKE=		Yes

WRKDIST=	${WRKDIR}

SCOREFILE=	${PREFIX}/lib/connect4/scores
MANDIR=		${PREFIX}/man/man
LIBDIR=		${PREFIX}/lib

do-install:
	@${INSTALL_DATA_DIR} ${LIBDIR}/connect4
	${INSTALL_PROGRAM} ${WRKBUILD}/c4 ${PREFIX}/bin/connect4
	${INSTALL_MAN} ${FILESDIR}/connect4.6 ${MANDIR}6/

.include <bsd.port.mk>
