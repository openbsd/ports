# $OpenBSD: Makefile,v 1.60 2013/01/03 20:05:15 sthen Exp $

COMMENT=	imap4 webmail client

DISTNAME=	roundcubemail-0.8.4
REVISION=	0
CATEGORIES=	mail www
HOMEPAGE=	http://www.roundcube.net/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3+ with exceptions for skins & plugins
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=roundcubemail/}
EXTRACT_SUFX=	.tar.gz

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/roundcubemail
TINSTDIR=	${TRUEPREFIX}/roundcubemail
SUBST_VARS=	INSTDIR TINSTDIR

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-mcrypt \
		lang/php/${MODPHP_VERSION},-pspell \
		sysutils/pecl-fileinfo \
		php-mysql-${MODPHP_VSPEC}|php-pgsql-${MODPHP_VSPEC}|php-sqlite-${MODPHP_VSPEC}:lang/php/${MODPHP_VERSION},-sqlite

do-configure:
	perl -pi -e '$$. == 1 && s,^#!.*env.*php.*,#!${MODPHP_BIN},;' \
	    -e 'close ARGV if eof;' ${WRKSRC}/bin/*

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

.include <bsd.port.mk>
