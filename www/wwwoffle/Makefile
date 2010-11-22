# $OpenBSD: Makefile,v 1.15 2010/11/22 08:36:55 espie Exp $

COMMENT=		WWW OFFLine Explorer

DISTNAME=		wwwoffle-2.5e
REVISION=		1
CATEGORIES=		www

HOMEPAGE=		http://www.gedanken.demon.co.uk/wwwoffle/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		http://distfiles.nl/
EXTRACT_SUFX=		.tgz

FLAVORS=		de fr es ru pl it
FLAVOR?=		

MAKE_ENV=		FLAVOR="${FLAVOR}"
MAKE_FLAGS=		prefix="${PREFIX}"

USE_GROFF =		Yes
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
