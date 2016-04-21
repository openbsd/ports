# $OpenBSD: Makefile,v 1.109 2016/04/21 00:46:07 sthen Exp $

COMMENT=	imap4 webmail client

V=		1.1.5
DISTNAME=	roundcubemail-$V
EXTRACT_SUFX=	-complete.tar.gz
CATEGORIES=	mail www
HOMEPAGE=	http://www.roundcube.net/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3+ with exceptions for skins & plugins
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://github.com/roundcube/roundcubemail/releases/download/$V/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/roundcubemail
TINSTDIR=	${TRUEPREFIX}/roundcubemail
SUBST_VARS=	INSTDIR TINSTDIR MODPHP_BIN

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-mcrypt \
		lang/php/${MODPHP_VERSION},-pspell \
		lang/php/${MODPHP_VERSION},-zip

do-configure:
	${SUBST_CMD} ${WRKSRC}/bin/update.sh
	sed -i 's,^#!/usr/bin/env php,#!${MODPHP_BIN},' ${WRKSRC}/bin/*

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cd ${WRKSRC} && pax -rw .* * ${INSTDIR}
.for i in .htaccess config/mimetypes.php
	mv ${INSTDIR}/$i ${INSTDIR}/$i.dist
.endfor
	@${SUBST_CMD} -m 0644 -c ${FILESDIR}/roundcubemail.conf \
	    ${INSTDIR}/roundcubemail.conf.dist
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}; \
	chgrp -R wheel ${INSTDIR}/bin; \
	chmod -R o-rwx ${INSTDIR}/bin; \
	find ${INSTDIR} \( -name \*.orig -or -name \*.beforesubst -or \
	    -name \*.src \) -exec rm -f {} +
	find ${INSTDIR} \( -name \*.png -or -name \*.js -or \
	    -name \*.css \) -exec chmod -x {} +

.include <bsd.port.mk>
