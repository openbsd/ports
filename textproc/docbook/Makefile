# OpenBSD makefile for:	docbook
# Version required:	3.0
# Date created:		May 17 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.7 2000/06/16 23:06:14 espie Exp $
#

DISTNAME=	docbook-3.0
CATEGORIES=	textproc
NEED_VERSION=	 1.230
MASTER_SITES=	ftp://ftp.ora.com/pub/davenport/
DISTFILES=	docbk241.tar.Z docbk30.tar.Z

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	"no explict license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no explict license"
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	${ISOCAT}::textproc/iso8879

EXTRACT_ONLY=	# empty
NO_BUILD=       Yes
WRKDIST=	${WRKDIR}

INSTDIR=	${PREFIX}/share/sgml/docbook
ISOCAT=		${PREFIX}/share/sgml/iso8879/catalog

pre-install:
	@[ -d ${INSTDIR}/2.4.1 ] || mkdir -p ${INSTDIR}/2.4.1
	@[ -d ${INSTDIR}/3.0 ] || mkdir -p ${INSTDIR}/3.0

do-install:
	@zcat ${DISTDIR}/docbk241.tar.Z |(cd ${INSTDIR}/2.4.1; pax -r)
	@${INSTALL_DATA} ${FILESDIR}/catalog241 ${INSTDIR}/2.4.1/catalog
	@echo "CATALOG \"${ISOCAT}\"" >> ${INSTDIR}/2.4.1/catalog
	@zcat ${DISTDIR}/docbk30.tar.Z |(cd ${INSTDIR}/3.0; pax -r)
	@${INSTALL_DATA} ${FILESDIR}/catalog30 ${INSTDIR}/3.0/catalog
	@echo "CATALOG \"${ISOCAT}\"" >> ${INSTDIR}/3.0/catalog
	@chmod ${SHAREMODE} ${INSTDIR}/2.4.1/*
	@chmod ${SHAREMODE} ${INSTDIR}/3.0/*
	@/usr/sbin/chown -R ${SHAREOWN}.${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
