# $OpenBSD: Makefile,v 1.24 2013/03/11 11:02:50 espie Exp $

VERSION=		2010-07-27
PKGNAME=		xemacs-sumo-21.${VERSION:S/-//g}
DISTFILES=		xemacs-sumo-${VERSION}.tar.gz
SUP_mule=		xemacs-mule-sumo-${VERSION}.tar.gz
SUPDISTFILES=		${SUP_mule}

CATEGORIES=     	editors

HOMEPAGE=		http://www.xemacs.org/

COMMENT=		complete set of supported XEmacs packages

# GNU GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES= 	http://ftp.xemacs.org/pub/xemacs/packages/ \
		ftp://ftp.oleane.net/pub/xemacs/packages/ \
		ftp://ftp.pasteur.fr/pub/computing/xemacs/packages/ \
		ftp://ftp.lab.kdd.co.jp/xemacs/packages/

SEPARATE_BUILD=	Yes

MULE=		mule
SUBST_VARS=	MULE

FLAVORS=mule
FLAVOR?=

.if ${FLAVOR:Mmule}
DISTFILES+=	${SUP_mule}
.endif

EXTRACT_ONLY=
NO_BUILD=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/xemacs
.for archive in ${DISTFILES}
	/usr/bin/gunzip -c ${FULLDISTDIR}/${archive} \
		| ${TAR} -C ${PREFIX}/lib/xemacs -xf -
.endfor

.include <bsd.port.mk>
