# $OpenBSD: Makefile,v 1.12 2013/03/11 11:44:44 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	speed up perl scripts by running them persistently

MODULES=	cpan
VERSION=	2.22
DISTNAME=	CGI-SpeedyCGI-${VERSION}
PKGNAME=	p5-CGI-SpeedyCGI-${VERSION}
REVISION=	3
CATEGORIES=	www

HOMEPAGE=	http://daemoninc.com/SpeedyCGI/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m perl util 

NO_TEST=		Yes

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
