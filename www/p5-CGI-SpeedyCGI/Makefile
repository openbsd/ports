# $OpenBSD: Makefile,v 1.1.1.1 2002/11/10 19:57:04 jakob Exp $

COMMENT=	"speed up perl scripts by running them persistently"

VERSION=	2.21
DISTNAME=	CGI-SpeedyCGI-${VERSION}
PKGNAME=	p5-CGI-SpeedyCGI-${VERSION}
CATEGORIES=	www perl5

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=CGI/}

HOMEPAGE=	http://daemoninc.com/SpeedyCGI/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=		Yes
CONFIGURE_STYLE=	perl

post-build:
	@sed 's,!!PREFIX!!,${PREFIX},' \
		< ${FILESDIR}/mod_speedycgi-enable \
		> ${WRKBUILD}/mod_speedycgi-enable

post-install:
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_speedycgi-enable ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/mod_speedycgi/mod_speedycgi.so ${PREFIX}/lib

.include <bsd.port.mk>
