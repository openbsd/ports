# $OpenBSD: Makefile,v 1.5 2013/04/11 15:41:20 sthen Exp $

COMMENT=	roundcube plugin: sieve rules (managesieve)

DISTNAME=	sieverules-1.17.1
REVISION=	0
PKGNAME=	rcube-${DISTNAME}
CATEGORIES=	mail www
HOMEPAGE=	http://www.tehinterweb.co.uk/roundcube/\#pisieverules

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://spacehopper.org/mirrors/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
WRKDIST=	${WRKDIR}/sieverules
INSTDIR=	${PREFIX}/roundcubemail/plugins
TINSTDIR=	${TRUEPREFIX}/roundcubemail/plugins
SUBST_VARS=	INSTDIR TINSTDIR

MODULES=	lang/php
RUN_DEPENDS=	mail/roundcubemail>=0.8,<0.9

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cp -Rp ${WRKDIST} ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} \( -name \*.orig -or -name \*.src \) -exec rm -f {} \;

.include <bsd.port.mk>
