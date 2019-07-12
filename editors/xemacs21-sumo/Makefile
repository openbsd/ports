# $OpenBSD: Makefile,v 1.27 2019/07/12 20:46:07 sthen Exp $

VERSION=		2010-07-27
PKGNAME=		xemacs-sumo-21.${VERSION:S/-//g}
REVISION=		1
DISTFILES=		xemacs-sumo-${VERSION}.tar.gz
SUP_mule=		xemacs-mule-sumo-${VERSION}.tar.gz
SUPDISTFILES=		${SUP_mule}

CATEGORIES=		editors

HOMEPAGE=		http://www.xemacs.org/

COMMENT=		complete set of supported XEmacs packages

# GNU GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://ftp.xemacs.org/pub/xemacs/packages/ \
		ftp://ftp.oleane.net/pub/xemacs/packages/ \
		ftp://ftp.pasteur.fr/pub/computing/xemacs/packages/ \
		ftp://ftp.lab.kdd.co.jp/xemacs/packages/

SEPARATE_BUILD=	Yes
RUN_DEPENDS=	editors/xemacs21/stable
BUILD_DEPENDS=	${RUN_DEPENDS}

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
