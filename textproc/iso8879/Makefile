# $OpenBSD: Makefile,v 1.20 2007/09/15 20:59:38 merdely Exp $
# $FreeBSD: Makefile,v 1.4 1997/07/10 03:25:28 jfieber Exp $

COMMENT=	character entity sets from ISO 8879:1986 (SGML)

DISTNAME=	isoENTS
PKGNAME=	iso8879-1986
CATEGORIES=	textproc

MASTER_SITES=	http://fallout.campusview.indiana.edu/ports/distfiles/
EXTRACT_SUFX=	.zip

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

# custom
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=       Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/sgml/iso8879
	${INSTALL_DATA} ${WRKDIR}/ISO* ${PREFIX}/share/sgml/iso8879
	${INSTALL_DATA} ${FILESDIR}/catalog ${PREFIX}/share/sgml/iso8879
	@chmod ${SHAREMODE} ${PREFIX}/share/sgml/iso8879/*
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/sgml/iso8879

.include <bsd.port.mk>
