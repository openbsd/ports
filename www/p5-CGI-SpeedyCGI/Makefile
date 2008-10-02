# $OpenBSD: Makefile,v 1.8 2008/10/02 05:58:56 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	speed up perl scripts by running them persistently

MODULES=	cpan
VERSION=	2.22
DISTNAME=	CGI-SpeedyCGI-${VERSION}
PKGNAME=	p5-CGI-SpeedyCGI-${VERSION}p1
CATEGORIES=	www

HOMEPAGE=	http://daemoninc.com/SpeedyCGI/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m perl util 

NO_REGRESS=		Yes

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
