# $OpenBSD: Makefile,v 1.19 2015/11/10 12:43:39 sthen Exp $

COMMENT=		WWW OFFLine Explorer

DISTNAME=		wwwoffle-2.5e
REVISION=		3
CATEGORIES=		www

HOMEPAGE=		http://www.gedanken.org.uk/software/wwwoffle/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=		http://www.gedanken.org.uk/software/wwwoffle/download/
EXTRACT_SUFX=		.tgz

FLAVORS=		de fr es ru pl it
FLAVOR?=		

MAKE_ENV=		FLAVOR="${FLAVOR}"
MAKE_FLAGS=		prefix="${PREFIX}"

NO_TEST=		Yes

# These index.htmls are symlinks and @sample doesn't like that.
post-install:
	@rm ${PREFIX}/share/wwwoffle/html/htdig/index.html
	@${INSTALL_DATA} ${PREFIX}/share/wwwoffle/html/htdig/search.html \
		${PREFIX}/share/wwwoffle/html/htdig/index.html	
	@rm ${PREFIX}/share/wwwoffle/html/index.html
	@${INSTALL_DATA} ${PREFIX}/share/wwwoffle/html/Welcome.html \
		${PREFIX}/share/wwwoffle/html/index.html	

.include <bsd.port.mk>
