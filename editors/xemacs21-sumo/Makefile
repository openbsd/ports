# $OpenBSD: Makefile,v 1.9 2002/10/26 00:39:15 naddy Exp $

# 
# What port/package will be created
#
VERSION=		2002-09-19
PKGNAME=		xemacs-sumo-21.${VERSION:S/-//g}
EXTRACT_SUFX=		.tar.bz2
DISTFILES=		xemacs-sumo-${VERSION}${EXTRACT_SUFX}
SUP_mule=		xemacs-mule-sumo-${VERSION}${EXTRACT_SUFX}
SUPDISTFILES=		${SUP_mule}

CATEGORIES=     	editors

HOMEPAGE=		http://www.xemacs.org/

COMMENT=		"complete set of supported XEmacs packages"
# where to send bitches about this port
#
MAINTAINER=		Jean-Yves Burlett <jean-yves@burlett.org>

# GNU GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# where the source files and patches can be fetched
MASTER_SITES= 	ftp://ftp.xemacs.org/pub/xemacs/packages/ \
		ftp://ftp.oleane.net/pub/xemacs/packages/ \
		ftp://ftp.pasteur.fr/pub/computing/xemacs/packages/ \
		ftp://ftp.mpi-sb.mpg.de/pub/gnu/mirror/ftp.xemacs.org/xemacs/packages/ \
		ftp://ftp.usyd.edu.au/pub/Xemacs/packages/ \
		ftp://ftp.lab.kdd.co.jp/xemacs/packages/ \
		ftp://ftp.th-darmstadt.de/pub/editors/xemacs/packages/

# Dependencies
#
# It is quite impossible to find a reliable cookie
# to tell whether xemacs21 is installed or not and is
# mule-compliant or not. it does not matter anyway.

# build/configuration variables

SEPARATE_BUILD=	concurrent

FLAVORS=mule
FLAVOR?=

.if ${FLAVOR:L:Mmule}
DISTFILES+= ${SUP_mule}
.endif

# have to force the bzip2 dependency, since setting extract_only to nil
# does not set the automatic one
BUILD_DEPENDS=		:bzip2-*:archivers/bzip2

EXTRACT_ONLY=
NO_BUILD=		Yes
NO_REGRESS=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/xemacs
.for archive in ${DISTFILES}
	${BZIP2} -dc ${FULLDISTDIR}/${archive} |tar -C ${PREFIX}/lib/xemacs -xf -
.endfor

.include <bsd.port.mk>
