# OpenBSD makefile for: English PK fonts
# Date created:		May 17 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.3 1999/09/22 10:44:21 espie Exp $
#

NEED_VERSION=	1.116
DISTNAME=	pkfonts
PKGNAME=	pkfonts${RESOLUTION}-1.0
CATEGORIES=	print
MASTER_SITES=	ftp://ftp.eos.hokudai.ac.jp/pub/TeX/fonts/ \
		ftp://ftp.wg.omron.co.jp/pub/tex/
DISTFILES=	pk${RESOLUTION}.tar.gz
# see below for RESOLUTION definition

MAINTAINER=	angelos@openbsd.org

MANUAL_PACKAGE_BUILD=	RESOLUTION has to be set to 118 240 300 360 400 600
DIST_SUBDIR=	pkfonts
EXTRACT_CMD=	/usr/bin/true # extracted directly in install target
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

do-install:
	${MKDIR} ${PREFIX}/lib/fonts
	tar -C ${PREFIX}/lib/fonts -xzf ${FULLDISTDIR}/${DISTFILES}
	@${CP} ${PKGDIR}/${RESOLUTION}.list ${PKGDIR}/PLIST 

pre-clean:
	@rm -f ${PKGDIR}/PLIST  # created by do-install above

.include <bsd.port.mk>
