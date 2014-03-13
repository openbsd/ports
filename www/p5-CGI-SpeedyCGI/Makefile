# $OpenBSD: Makefile,v 1.13 2014/03/13 17:33:28 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	speed up perl scripts by running them persistently

MODULES=	cpan
VERSION=	2.22
DISTNAME=	CGI-SpeedyCGI-${VERSION}
PKGNAME=	p5-CGI-SpeedyCGI-${VERSION}
REVISION=	4
CATEGORIES=	www

HOMEPAGE=	http://daemoninc.com/SpeedyCGI/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m perl util 

NO_TEST=		Yes

# XXX doesn't use apache-moduleport.mk
BUILD_DEPENDS=		www/apache-httpd-openbsd
RUN_DEPENDS=		${BUILD_DEPENDS}

post-patch:
	@cp ${WRKSRC}/src/optdefs ${WRKSRC}/src/optdefs.orig
	@sed 's,!!PREFIX!!,${PREFIX},' \
		< ${WRKSRC}/src/optdefs.orig \
		> ${WRKSRC}/src/optdefs

post-build:
	@sed 's,!!PREFIX!!,${PREFIX},' \
		< ${FILESDIR}/mod_speedycgi-enable \
		> ${WRKBUILD}/mod_speedycgi-enable

post-install:
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_speedycgi-enable ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/mod_speedycgi/mod_speedycgi.so ${PREFIX}/lib

.include <bsd.port.mk>
