# $OpenBSD: Makefile,v 1.6 2002/10/29 01:30:42 naddy Exp $

COMMENT=		"WWW OFFLine Explorer"

DISTNAME=		wwwoffle-2.5e
PKGNAME=		wwwoffle-2.5e
CATEGORIES=		www

HOMEPAGE=		http://www.gedanken.demon.co.uk/wwwoffle/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SUNSITE}/apps/www/servers/ \
			ftp://ftp.demon.co.uk/pub/unix/httpd/

EXTRACT_SUFX=		.tgz

MAKE_FLAGS=		prefix="${PREFIX}"

FLAVORS=		de fr es ru pl it
FLAVOR?=		
MAKE_ENV=		FLAVOR="${FLAVOR}"

NO_REGRESS=		Yes

.include <bsd.port.mk>
