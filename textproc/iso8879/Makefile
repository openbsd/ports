# $OpenBSD: Makefile,v 1.12 2000/09/26 02:55:17 brad Exp $
# $FreeBSD: Makefile,v 1.4 1997/07/10 03:25:28 jfieber Exp $

DISTNAME=	isoENTS
PKGNAME=	iso8879-1986
CATEGORIES=	textproc
NEED_VERSION=	1.330
MASTER_SITES=	http://fallout.campusview.indiana.edu/ports/distfiles/
EXTRACT_SUFX=	.zip

MAINTAINER=	matthieu@laas.fr

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=       Yes

WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/sgml/iso8879
	${INSTALL_DATA} ${WRKDIR}/ISO* ${PREFIX}/share/sgml/iso8879
	${INSTALL_DATA} ${FILESDIR}/catalog ${PREFIX}/share/sgml/iso8879
	@chmod ${SHAREMODE} ${PREFIX}/share/sgml/iso8879/*
	@chown -R ${SHAREOWN}.${SHAREGRP} ${PREFIX}/share/sgml/iso8879

.include <bsd.port.mk>
