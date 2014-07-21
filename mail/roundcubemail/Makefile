# $OpenBSD: Makefile,v 1.87 2014/07/21 07:58:28 sthen Exp $

COMMENT=	imap4 webmail client

COMPOSER_V=	1.0.0-alpha8
DISTNAME=	roundcubemail-1.0.2
CATEGORIES=	mail www
HOMEPAGE=	http://www.roundcube.net/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3+ with exceptions for skins & plugins
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=roundcubemail/}
# this is optional but is used for installing plugins; upstream instructions
# tell you to "curl http://<url> | php" which is totally unsafe, so let's fetch
# a known/verifiable version instead.
MASTER_SITES0=	https://getcomposer.org/download/${COMPOSER_V}/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		composer-${COMPOSER_V}{composer}.phar:0
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}
EXTRACT_SUFX=	.tar.gz

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/roundcubemail
TINSTDIR=	${TRUEPREFIX}/roundcubemail
SUBST_VARS=	INSTDIR TINSTDIR

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-mcrypt \
		lang/php/${MODPHP_VERSION},-pspell \
		lang/php/${MODPHP_VERSION},-zip

post-extract:
	cp ${FULLDISTDIR}/composer-${COMPOSER_V}.phar ${WRKSRC}/composer.phar

do-configure:
	perl -pi -e '$$. == 1 && s,^#!.*env.*php.*,#!${MODPHP_BIN},;' \
	    -e 'close ARGV if eof;' ${WRKSRC}/bin/* ${WRKSRC}/composer.phar
	${SUBST_CMD} ${WRKSRC}/bin/update.sh

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cd ${WRKSRC} && pax -rw .* * ${INSTDIR}
.for i in .htaccess config/mimetypes.php
	mv ${INSTDIR}/$i ${INSTDIR}/$i.dist
.endfor
	@${SUBST_CMD} -c ${FILESDIR}/roundcubemail.conf \
	    ${INSTDIR}/roundcubemail.conf.dist
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}; \
	chgrp -R wheel ${INSTDIR}/bin; \
	chmod -R o-rwx ${INSTDIR}/bin; \
	find ${INSTDIR} \( -name \*.orig -or -name \*.src \) -exec rm -f {} +
	find ${INSTDIR} \( -name \*.png -or -name \*.js -or -name \*.css \) -exec chmod -x {} +
	chmod 700 ${INSTDIR}/composer.phar

.include <bsd.port.mk>
