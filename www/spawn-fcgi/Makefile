# $OpenBSD: Makefile,v 1.9 2010/10/19 08:02:57 espie Exp $

COMMENT=	spawn FastCGI processes

DISTNAME=	spawn-fcgi-1.6.3
PKGNAME=	${DISTNAME}p0
CATEGORIES=	www
MASTER_SITES=	http://www.lighttpd.net/download/

HOMEPAGE=	http://redmine.lighttpd.net/projects/spawn-fcgi/news

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.64
USE_GROFF =	Yes

.include <bsd.port.mk>
