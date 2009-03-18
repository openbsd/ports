# $OpenBSD: Makefile,v 1.16 2009/03/18 17:02:47 ajacoutot Exp $

COMMENT =	imap4 webmail client

DISTNAME =	roundcubemail-0.2.1
PKGNAME =	${DISTNAME}p0
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

RUN_DEPENDS =	:php5-core-*:www/php5/core \
		:php5-mbstring-*:www/php5/extensions,-mbstring
# pear-MDB2, using internal copy perhaps??

do-install:
	@cp -Rp ${WRKDIST} ${INSTDIR}
	@mv ${INSTDIR}/config/mimetypes.php ${INSTDIR}/config/mimetypes.php.dist
	@chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	@find ${INSTDIR} -name \*.orig -exec rm -f {} \;

.include <bsd.port.mk>
