# $OpenBSD: Makefile,v 1.43 2011/10/11 22:04:28 sthen Exp $

COMMENT =	imap4 webmail client

DISTNAME =	roundcubemail-0.6
CATEGORIES =	mail www
HOMEPAGE =	http://www.roundcube.net/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=roundcubemail/}

NO_BUILD =	Yes
NO_REGRESS =	Yes
PKG_ARCH =	*

PREFIX =	/var/www
INSTDIR =	${PREFIX}/roundcubemail
TINSTDIR =	${TRUEPREFIX}/roundcubemail
SUBST_VARS =	INSTDIR TINSTDIR

MODULES =	lang/php
RUN_DEPENDS =	lang/php/${MODPHP_VERSION},-mcrypt \
		lang/php/${MODPHP_VERSION},-pspell \
		sysutils/pecl-fileinfo \
		php-mysql-*|php-pgsql-*|php-sqlite-*:lang/php/${MODPHP_VERSION},-sqlite

do-configure:
	perl -pi -e '$$. == 1 && s,^#!.*env.*php.*,#!${MODPHP_BIN},;' \
	    -e 'close ARGV if eof;' ${WRKSRC}/bin/*

do-install:
	cp -Rp ${WRKDIST} ${INSTDIR}
.for i in .htaccess config/mimetypes.php
	mv ${INSTDIR}/$i ${INSTDIR}/$i.dist
.endfor
	${SUBST_CMD} -c ${FILESDIR}/roundcubemail.conf \
	    ${INSTDIR}/roundcubemail.conf.dist; \
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}; \
	find ${INSTDIR} \( -name \*.orig -or -name \*.src \) -exec rm -f {} \;

.include <bsd.port.mk>
