COMMENT-main=	IMAP4 webmail client
COMMENT-classic=classic skin for Roundcube webmail
COMMENT-larry=	larry skin for Roundcube webmail

V=		1.6.8
DISTNAME=	roundcubemail-$V
DISTFILES.skins= ${DISTNAME}-skins.tar.xz
EXTRACT_SUFX=	-complete.tar.gz

PKGNAME-main=	roundcubemail-${VS}
PKGNAME-classic=rcube-skin-classic-${VS}
PKGNAME-larry=	rcube-skin-larry-${VS}

FIX_EXTRACT_PERMISSIONS= Yes

CATEGORIES=	mail www

HOMEPAGE=	https://roundcube.net/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv3+ with exceptions for skins & plugins
PERMIT_PACKAGE=	Yes

SITES=		https://github.com/roundcube/roundcubemail/releases/download/$V/
SITES.skins=	https://spacehopper.org/mirrors/
MULTI_PACKAGES=	-main -classic -larry
# reduce churn during beta/rc tests
VS=		${V:S/-//}

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/roundcubemail
TINSTDIR=	${TRUEPREFIX}/roundcubemail
SUBST_VARS=	INSTDIR TINSTDIR

MODULES=	lang/php

RUN_DEPENDS=	${BUILD_PKGPATH}=${VS}

RUN_DEPENDS-main= ${MODPHP_PDO_DEPENDS} \
		lang/php/${MODPHP_VERSION},-intl \
		lang/php/${MODPHP_VERSION},-pspell \
		lang/php/${MODPHP_VERSION},-zip

post-extract:
	mv ${WRKDIR}/vendor/roundcube/* ${WRKSRC}/skins/

do-configure:
	cd ${WRKSRC}; ${SUBST_CMD} bin/update.sh bin/installto.sh; \
	 sed -i 's,^#! */usr/bin/env php,#!${MODPHP_BIN},' \
	    bin/* vendor/pear/crypt_gpg/scripts/crypt-gpg-pinentry

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
	    \( -name \*${PATCHORIG} -o -name \*.beforesubst -o -name \*.src \) \
		-delete -o \
	    \( -name \*.png -o -name \*.js -o -name \*.css \) \
		-exec chmod -x {} +
	rm ${INSTDIR}/composer.json

dist:
	@set -x; t=`mktemp -d /tmp/rcubeskins.XXXXXXXXXX`; \
	f=$$t/${DISTNAME}-skins.tar.xz; \
	cd $$t; \
	composer --no-plugins require roundcube/larry roundcube/classic; \
	echo tarring; tar cf - vendor/roundcube/{classic,larry} | xz -T 0 > $$f; \
	scp $$f naiad:mirrors/; \
	cd -; echo rm -rf $$t

.include <bsd.port.mk>
