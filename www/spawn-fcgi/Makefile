# $OpenBSD: Makefile,v 1.8 2010/07/06 21:10:50 sthen Exp $

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

.include <bsd.port.mk>
