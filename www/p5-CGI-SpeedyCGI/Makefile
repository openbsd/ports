# $OpenBSD: Makefile,v 1.4 2004/12/11 13:29:22 alek Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"speed up perl scripts by running them persistently"

VERSION=	2.22
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
WANTLIB=		c m perl util 

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
