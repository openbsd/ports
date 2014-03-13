# $OpenBSD: Makefile,v 1.14 2014/03/13 22:25:45 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	speed up perl scripts by running them persistently

MODULES=	cpan
VERSION=	2.22
DISTNAME=	CGI-SpeedyCGI-${VERSION}
PKGNAME=	p5-CGI-SpeedyCGI-${VERSION}
REVISION=	5
CATEGORIES=	www

HOMEPAGE=	http://daemoninc.com/SpeedyCGI/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m perl util

NO_TEST=		Yes

# XXX doesn't use apache-module.port.mk
BUILD_DEPENDS=		www/apache-httpd-openbsd
RUN_DEPENDS=		${BUILD_DEPENDS}

post-patch:
	${SUBST_CMD} ${WRKSRC}/src/optdefs
	ln -s ${LOCALBASE}/sbin/apxs ${WRKDIR}/bin/

post-build:
	@${SUBST_CMD} -c ${FILESDIR}/mod_speedycgi-enable \
	    ${WRKBUILD}/mod_speedycgi-enable

post-install:
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_speedycgi-enable ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/mod_speedycgi/mod_speedycgi.so ${PREFIX}/lib

.include <bsd.port.mk>
