# $OpenBSD: Makefile,v 1.9 2020/07/11 22:54:36 sthen Exp $

COMMENT=	roundcube plugin: log end-user IP in Dovecot using IMAP ID

GH_ACCOUNT=	corbosman
GH_PROJECT=	dovecot_ident
GH_TAGNAME=	2.2
PKGNAME=	rcube-${DISTNAME}
REVISION=	3

CATEGORIES=	mail www

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv2
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/roundcubemail/plugins
SUBST_VARS=	INSTDIR

MODULES=	lang/php

RUN_DEPENDS=	mail/roundcubemail>=1.1

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}/dovecot_ident
	cp -Rp ${WRKDIST}/* ${INSTDIR}/dovecot_ident
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} \( -name \*.orig -or -name \*.src \) -delete

.include <bsd.port.mk>
