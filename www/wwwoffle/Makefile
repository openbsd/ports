# $OpenBSD: Makefile,v 1.5 2002/03/21 21:25:55 espie Exp $

COMMENT=		"WWW OFFLine Explorer"

DISTNAME=		wwwoffle-2.5e
PKGNAME=		wwwoffle-2.5e
CATEGORIES=		www
NEED_VERSION=		1.515

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

.include <bsd.port.mk>
