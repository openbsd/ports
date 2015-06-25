# $OpenBSD: Makefile,v 1.100 2015/06/25 12:00:25 sthen Exp $

COMMENT=	imap4 webmail client

COMPOSER_V=	1.0.0-alpha9
DISTNAME=	roundcubemail-1.1.2
REVISION=	1
CATEGORIES=	mail www
HOMEPAGE=	http://www.roundcube.net/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3+ with exceptions for skins & plugins
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=roundcubemail/}
# this is optional but is used for installing plugins; upstream instructions
# tell you to "curl http://<url> | php" which is totally unsafe, so let's fetch
# a known/verifiable version instead.
#MASTER_SITES0=	https://getcomposer.org/download/${COMPOSER_V}/
# mirrored for now; upstream re-rolled
MASTER_SITES0=	http://spacehopper.org/mirrors/
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
SUBST_VARS=	INSTDIR TINSTDIR MODPHP_BIN

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-mcrypt \
		lang/php/${MODPHP_VERSION},-pspell \
		lang/php/${MODPHP_VERSION},-zip \
		mail/pear-Mail-Mime>=1.8.9 \
		mail/pear-Mail-mimeDecode>=1.5.5 \
		net/pear-Net-IDNA2>=0.1.1 \
		net/pear-Net-Sieve>=1.3.2 \
		net/pear-Net-SMTP>=1.6.2 \
		security/pear-Auth-SASL>=1.0.6

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
	@${SUBST_CMD} -m 0644 -c ${FILESDIR}/roundcubemail.conf \
	    ${INSTDIR}/roundcubemail.conf.dist
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}; \
	chgrp -R wheel ${INSTDIR}/bin; \
	chmod -R o-rwx ${INSTDIR}/bin; \
	find ${INSTDIR} \( -name \*.orig -or -name \*.beforesubst -or \
	    -name \*.src \) -exec rm -f {} +
	find ${INSTDIR} \( -name \*.png -or -name \*.js -or \
	    -name \*.css \) -exec chmod -x {} +
	chmod 700 ${INSTDIR}/composer.phar

.include <bsd.port.mk>
