# New ports collection makefile for:	iso8879
# Version required:	1986
# Date created:		June 19, 1997
# Whom:			jfieber
#
# $FreeBSD: Makefile,v 1.4 1997/07/10 03:25:28 jfieber Exp $
# $OpenBSD: Makefile,v 1.1.1.1 1998/04/05 08:52:11 matthieu Exp $
#

DISTNAME=	isoENTS
PKGNAME=	iso8879-1986
CATEGORIES=	textproc
MASTER_SITES=	http://www.sil.org/sgml/
EXTRACT_SUFX=	.zip

MAINTAINER=	matthieu@laas.fr

BUILD_DEPENDS=	unzip:${PORTSDIR}/archivers/unzip

NO_MTREE=       yes
EXTRACT_ONLY=	# empty
NO_BUILD=       yes
NO_PATCH=	yes
NO_CONFIGURE=	yes
NO_WRKSUBDIR=	yes

INSTDIR=	${PREFIX}/share/sgml/iso8879

pre-install:
	@[ -d ${INSTDIR} ] || ${MKDIR} ${INSTDIR}

do-install:
	@unzip -a -q -o -d ${INSTDIR} ${DISTDIR}/${DISTFILES}
	@${INSTALL_DATA} ${FILESDIR}/catalog ${INSTDIR}/catalog
	@chmod ${SHAREMODE} ${INSTDIR}/*
	@/usr/sbin/chown -R ${SHAREOWN}.${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
