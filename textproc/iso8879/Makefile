# $OpenBSD: Makefile,v 1.7 2000/04/18 10:08:24 turan Exp $
# $FreeBSD: Makefile,v 1.4 1997/07/10 03:25:28 jfieber Exp $

DISTNAME=	isoENTS
PKGNAME=	iso8879-1986
CATEGORIES=	textproc
NEED_VERSION=	1.191
FAKE=No
MASTER_SITES=	http://fallout.campusview.indiana.edu/ports/distfiles/

MAINTAINER=	matthieu@laas.fr

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_MTREE=       yes
EXTRACT_ONLY=	# empty
NO_BUILD=       yes
NO_PATCH=	yes
NO_CONFIGURE=	yes
WRKDIST=	${WRKDIR}
USE_ZIP=	yes

INSTDIR=	${PREFIX}/share/sgml/iso8879

pre-install:
	@[ -d ${INSTDIR} ] || mkdir -p ${INSTDIR}

do-install:
	@unzip -a -q -o -d ${INSTDIR} ${DISTDIR}/${DISTFILES}
	@${INSTALL_DATA} ${FILESDIR}/catalog ${INSTDIR}/catalog
	@chmod ${SHAREMODE} ${INSTDIR}/*
	@/usr/sbin/chown -R ${SHAREOWN}.${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
