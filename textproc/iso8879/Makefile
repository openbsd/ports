# $OpenBSD: Makefile,v 1.10 2000/09/12 15:37:34 brad Exp $
# $FreeBSD: Makefile,v 1.4 1997/07/10 03:25:28 jfieber Exp $

DISTNAME=	isoENTS
PKGNAME=	iso8879-1986
CATEGORIES=	textproc
NEED_VERSION=	1.328
MASTER_SITES=	http://fallout.campusview.indiana.edu/ports/distfiles/
EXTRACT_SUFX=	.zip
EXTRACT_ONLY=	# empty

MAINTAINER=	matthieu@laas.fr

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=       Yes

WRKDIST=	${WRKDIR}

INSTDIR=	${PREFIX}/share/sgml/iso8879

pre-install:
	@mkdir -p ${INSTDIR}

do-install:
	@unzip -aqod ${INSTDIR} ${DISTDIR}/${DISTFILES}
	${INSTALL_DATA} ${FILESDIR}/catalog ${INSTDIR}/catalog
	@chmod ${SHAREMODE} ${INSTDIR}/*
	@chown -R ${SHAREOWN}.${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
