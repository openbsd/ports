# $OpenBSD: Makefile,v 1.3 2001/11/13 22:13:23 espie Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"Java Development Kit for Java 1.1 platform"

DISTNAME=	jdk-1.1.8
CATEGORIES=	devel
NEED_VERSION=	1.496

HOMEPAGE=	http://www.freebsd.org/java/
MAINTAINER=	Matt Behrens <matt@openbsd.org>

PERMIT_PACKAGE_CDROM=	"Redistribution not permitted"
PERMIT_PACKAGE_FTP=	"Redistribution not permitted"
PERMIT_DISTFILES_CDROM=	"Redistribution not permitted"
PERMIT_DISTFILES_FTP=	"Redistribution not permitted"

MASTER_SITES=	http://ftp7.de.freebsd.org/pub/FreeBSD/JDK/
DISTFILES=	jdk1.1.8_AOUT.V1999-11-9.tar.gz
EXTRACT_ONLY=

RUN_DEPENDS=	:freebsd_lib->=2.2.8:emulators/freebsd_lib

NO_BUILD=	Yes

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/jdk1.1.8

do-install:
.for DISTFILE in ${DISTFILES}
	tar -C ${PREFIX} -xzf ${DISTDIR}/${DISTFILE}
.endfor

.include <bsd.port.mk>

