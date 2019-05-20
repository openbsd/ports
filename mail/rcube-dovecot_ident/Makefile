# $OpenBSD: Makefile,v 1.5 2019/05/20 13:23:44 sthen Exp $

COMMENT=	roundcube plugin: log end-user IP in Dovecot using IMAP ID

GH_ACCOUNT=	corbosman
GH_PROJECT=	dovecot_ident
GH_TAGNAME=	2.2
REVISION=	2

PKGNAME=	rcube-${DISTNAME}
CATEGORIES=	mail www

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/roundcubemail/plugins
SUBST_VARS=	INSTDIR

MODULES=	lang/php
MODPHP_VERSION=	7.3

RUN_DEPENDS=	mail/roundcubemail>=1.1

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}/dovecot_ident
	cp -Rp ${WRKDIST}/* ${INSTDIR}/dovecot_ident
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} \( -name \*.orig -or -name \*.src \) -exec rm -f {} \;

.include <bsd.port.mk>
