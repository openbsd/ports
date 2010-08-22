# $OpenBSD: Makefile,v 1.23 2010/08/22 12:37:14 sthen Exp $

COMMENT =	imap4 webmail client

DISTNAME =	roundcubemail-0.4
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
SUBST_VARS =	INSTDIR

RUN_DEPENDS =	::www/php5/core \
		::www/php5/extensions,-mbstring \
		:php5-mysql-*|php5-pgsql-*|php5-sqlite-*:www/php5/extensions,-sqlite

do-install:
	cp -Rp ${WRKDIST} ${INSTDIR}
.for i in .htaccess config/mimetypes.php
	mv ${INSTDIR}/$i ${INSTDIR}/$i.dist
.endfor
	${SUBST_CMD} -c ${FILESDIR}/roundcubemail.conf \
	    ${INSTDIR}/roundcubemail.conf.dist
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} \( -name \*.orig -or -name \*.src \) -exec rm -f {} \;

.include <bsd.port.mk>
