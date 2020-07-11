# $OpenBSD: Makefile,v 1.154 2020/07/11 22:54:36 sthen Exp $

COMMENT=	imap4 webmail client

V=		1.4.7
DISTNAME=	roundcubemail-$V
PKGNAME=	roundcubemail-${V:S/-rc/rc/}
EXTRACT_SUFX=	-complete.tar.gz
REVISION=	0

FIX_EXTRACT_PERMISSIONS= Yes

CATEGORIES=	mail www

HOMEPAGE=	http://www.roundcube.net/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv3+ with exceptions for skins & plugins
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://github.com/roundcube/roundcubemail/releases/download/$V/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/roundcubemail
TINSTDIR=	${TRUEPREFIX}/roundcubemail
SUBST_VARS=	INSTDIR TINSTDIR MODPHP_BIN

MODULES=	lang/php

RUN_DEPENDS=	${MODPHP_PDO_DEPENDS} \
		lang/php/${MODPHP_VERSION},-pspell \
		lang/php/${MODPHP_VERSION},-zip

do-configure:
	cd ${WRKSRC}; ${SUBST_CMD} bin/update.sh bin/installto.sh; \
	 sed -i 's,^#! */usr/bin/env php,#!${MODPHP_BIN},' \
	    bin/* vendor/pear/crypt_gpg/scripts/crypt-gpg-pinentry \
	    vendor/roundcube/plugin-installer/src/bin/rcubeinitdb.sh

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cd ${WRKSRC} && pax -rw .* * ${INSTDIR}
.for i in .htaccess config/mimetypes.php
	mv ${INSTDIR}/$i ${INSTDIR}/$i.dist
.endfor
	@${SUBST_CMD} -m 0644 -c ${FILESDIR}/roundcubemail.conf \
	    ${INSTDIR}/roundcubemail.conf.dist
	mkdir ${INSTDIR}/db; \
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}; \
	chgrp -R wheel ${INSTDIR}/bin; \
	chmod -R o-rwx ${INSTDIR}/bin; \
	find ${INSTDIR} \
	    \( -name \*.orig -o -name \*.beforesubst -o -name \*.src \) \
		-delete -o \
	    \( -name \*.png -o -name \*.js -o -name \*.css \) \
		-exec chmod -x {} +
	rm ${INSTDIR}/composer.json

.include <bsd.port.mk>
