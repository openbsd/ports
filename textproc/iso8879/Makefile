# $OpenBSD: Makefile,v 1.5 2000/03/24 22:12:01 espie Exp $
# $FreeBSD: Makefile,v 1.4 1997/07/10 03:25:28 jfieber Exp $

DISTNAME=	isoENTS
PKGNAME=	iso8879-1986
CATEGORIES=	textproc
NEED_VERSION=	1.191
MASTER_SITES=	http://fallout.campusview.indiana.edu/ports/distfiles/


MAINTAINER=	matthieu@laas.fr

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
