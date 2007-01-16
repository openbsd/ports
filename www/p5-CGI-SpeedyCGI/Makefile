# $OpenBSD: Makefile,v 1.5 2007/01/16 17:52:06 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	"speed up perl scripts by running them persistently"

MODULES=	cpan
DISTNAME=	CGI-SpeedyCGI-2.22
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

post-build:
	@sed 's,!!PREFIX!!,${PREFIX},' \
		< ${FILESDIR}/mod_speedycgi-enable \
		> ${WRKBUILD}/mod_speedycgi-enable

post-install:
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_speedycgi-enable ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/mod_speedycgi/mod_speedycgi.so ${PREFIX}/lib

.include <bsd.port.mk>
