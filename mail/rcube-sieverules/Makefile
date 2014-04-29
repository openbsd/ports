# $OpenBSD: Makefile,v 1.9 2014/04/29 20:21:24 sthen Exp $

COMMENT=	roundcube plugin: sieve rules (managesieve)

V=		2.1.2
DISTNAME=	sieverules-$V
DISTFILES=	${DISTNAME}{$V}.tar.gz
PKGNAME=	rcube-${DISTNAME}
CATEGORIES=	mail www
HOMEPAGE=	http://www.tehinterweb.co.uk/roundcube/\#pisieverules

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://github.com/JohnDoh/Roundcube-Plugin-SieveRules-Managesieve/archive/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
WRKDIST=	${WRKDIR}/Roundcube-Plugin-SieveRules-Managesieve-$V/
INSTDIR=	${PREFIX}/roundcubemail/plugins
TINSTDIR=	${TRUEPREFIX}/roundcubemail/plugins
SUBST_VARS=	INSTDIR TINSTDIR

MODULES=	lang/php
RUN_DEPENDS=	mail/roundcubemail>=0.9

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}/sieverules
	cp -Rp ${WRKDIST}/* ${INSTDIR}/sieverules
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} \( -name \*.orig -or -name \*.src \) -exec rm -f {} \;

.include <bsd.port.mk>
