# $OpenBSD: Makefile,v 1.20 2011/01/02 22:29:42 jasper Exp $

VERSION=		2006-05-10
PKGNAME=		xemacs-sumo-21.${VERSION:S/-//g}
REVISION=		0
DISTFILES=		xemacs-sumo-${VERSION}.tar.gz
SUP_mule=		xemacs-mule-sumo-${VERSION}.tar.gz
SUPDISTFILES=		${SUP_mule}

CATEGORIES=     	editors

HOMEPAGE=		http://www.xemacs.org/

COMMENT=		complete set of supported XEmacs packages

# GNU GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES= 	htp://ftp.xemacs.org/pub/xemacs/packages/ \
		ftp://ftp.oleane.net/pub/xemacs/packages/ \
		ftp://ftp.pasteur.fr/pub/computing/xemacs/packages/ \
		ftp://ftp.lab.kdd.co.jp/xemacs/packages/

SEPARATE_BUILD=	concurrent

MULE=		mule
SUBST_VARS=	MULE

FLAVORS=mule
FLAVOR?=

.if ${FLAVOR:L:Mmule}
DISTFILES+=	${SUP_mule}
.endif

EXTRACT_ONLY=
NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/xemacs
.for archive in ${DISTFILES}
	/usr/bin/gunzip -c ${FULLDISTDIR}/${archive} \
		| ${TAR} -C ${PREFIX}/lib/xemacs -xf -
.endfor

.include <bsd.port.mk>
