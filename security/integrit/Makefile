# $OpenBSD: Makefile,v 1.16 2019/07/12 20:49:03 sthen Exp $

COMMENT=		file integrity checker

DISTNAME=		integrit-4.1
REVISION=		2
CATEGORIES=		security

HOMEPAGE=		http://sourceforge.net/projects/integrit/

MAINTAINER=		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=integrit/}

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59

ALL_TARGET=		integrit utils

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/integrit
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/integrit
	@cd ${WRKSRC}/examples && ${INSTALL_DATA} README crontab install_db \
	  integrit_check viewreport ${PREFIX}/share/doc/integrit 
	@cd ${WRKSRC}/examples && ${INSTALL_DATA} *.conf \
	  ${PREFIX}/share/examples/integrit

.include <bsd.port.mk>
