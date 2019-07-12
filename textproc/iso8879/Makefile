# $OpenBSD: Makefile,v 1.24 2019/07/12 20:50:00 sthen Exp $

COMMENT=	character entity sets from ISO 8879:1986 (SGML)

DISTNAME=	isoENTS
PKGNAME=	iso8879-1986
REVISION=	0
CATEGORIES=	textproc

MASTER_SITES=	http://fallout.campusview.indiana.edu/ports/distfiles/
EXTRACT_SUFX=	.zip

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

# custom
PERMIT_PACKAGE=	Yes

NO_BUILD=       Yes
NO_TEST=	Yes
PKG_ARCH=	*

WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/sgml/iso8879
	${INSTALL_DATA} ${WRKDIR}/ISO* ${PREFIX}/share/sgml/iso8879
	${INSTALL_DATA} ${FILESDIR}/catalog ${PREFIX}/share/sgml/iso8879
	@chmod ${SHAREMODE} ${PREFIX}/share/sgml/iso8879/*
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/sgml/iso8879

.include <bsd.port.mk>
