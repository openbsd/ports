# OpenBSD makefile for: English PK fonts
# Date created:		May 17 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.9 2000/04/09 17:37:53 espie Exp $
#

DISTNAME=	pkfonts
PKGNAME=	pkfonts${RESOLUTION}-1.0
CATEGORIES=	print
NEED_VERSION=	1.116
FAKE=No
MASTER_SITES=	ftp://ftp.eos.hokudai.ac.jp/pub/TeX/fonts/ \
		ftp://ftp.wg.omron.co.jp/pub/tex/
DISTFILES=	pk${RESOLUTION}.tar.gz
# see below for RESOLUTION definition

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MANUAL_PACKAGE_BUILD=	RESOLUTION has to be set to 118 240 300 360 400 600
DIST_SUBDIR=	pkfonts
# NO_EXTRACT is waiting for a bsd.port.mk fix to be approved.
# For the interim, redefine do-extract.
#NO_EXTRACT=	extracted in install target
NO_BUILD=	yes

.if !defined(RESOLUTION)
RESOLUTION=     300
RESOLUTION_UNSPECIFIED=	yes
.else
.if ${RESOLUTION} != 118 && ${RESOLUTION} != 240 && \
	${RESOLUTION} != 300 && ${RESOLUTION} != 360 && \
	${RESOLUTION} != 400 && ${RESOLUTION} != 600
RESOLUTION_INVALID=	yes
.endif
.endif

.if !defined(NO_WARNINGS)
pre-fetch:
.if defined(RESOLUTION_UNSPECIFIED)
	@echo "Using ${RESOLUTION}dpi English PK fonts."
	@echo "Set the environment variable RESOLUTION if you want"
	@echo "it to use other resolutions."
	@echo "Possible values are: 118, 240, 300 (default), 360, 400 and 600."
.elif defined(RESOLUTION_INVALID)
	@echo "Error: invalid value for RESOLUTION: \"${RESOLUTION}\"" 
	@echo "Possible values are: 118, 240, 300 (default), 360, 400 and 600."
	@/usr/bin/false
.endif
.endif

do-extract:
	mkdir -p ${WRKDIR}

do-install:
	mkdir -p ${PREFIX}/lib/fonts
	tar -C ${PREFIX}/lib/fonts -xzf ${FULLDISTDIR}/${DISTFILES}
	@cp ${PKGDIR}/${RESOLUTION}.list ${PKGDIR}/PLIST 

pre-clean:
	@rm -f ${PKGDIR}/PLIST  # created by do-install above

.include <bsd.port.mk>
