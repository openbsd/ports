# $OpenBSD: Makefile,v 1.10 2007/09/15 20:38:26 merdely Exp $

COMMENT=		WWW OFFLine Explorer

DISTNAME=		wwwoffle-2.5e
PKGNAME=		${DISTNAME}p0
CATEGORIES=		www

HOMEPAGE=		http://www.gedanken.demon.co.uk/wwwoffle/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_SUNSITE:=apps/www/servers/} \
			ftp://ftp.demon.co.uk/pub/unix/httpd/

EXTRACT_SUFX=		.tgz

FLAVORS=		de fr es ru pl it
FLAVOR?=		

MAKE_ENV=		FLAVOR="${FLAVOR}"
MAKE_FLAGS=		prefix="${PREFIX}"

NO_REGRESS=		Yes

# These index.htmls are symlinks and @sample doesn't like that.
post-install:
	@rm ${PREFIX}/share/wwwoffle/html/htdig/index.html
	@${INSTALL_DATA} ${PREFIX}/share/wwwoffle/html/htdig/search.html \
		${PREFIX}/share/wwwoffle/html/htdig/index.html	
	@rm ${PREFIX}/share/wwwoffle/html/index.html
	@${INSTALL_DATA} ${PREFIX}/share/wwwoffle/html/Welcome.html \
		${PREFIX}/share/wwwoffle/html/index.html	

.include <bsd.port.mk>
