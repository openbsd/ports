# $OpenBSD: Makefile,v 1.1.1.1 2000/09/05 11:37:27 espie Exp $

DISTNAME=		wwwoffle-2.5e
PKGNAME=		wwwoffle-2.5e
CATEGORIES=		www
NEED_VERSION=		1.319	

HOMEPAGE=		http://www.gedanken.demon.co.uk/wwwoffle/

MAINTAINER=		ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://metalab.unc.edu/pub/Linux/apps/www/servers/ \
			ftp://ftp.demon.co.uk/pub/unix/httpd/

EXTRACT_SUFX=		.tgz

MAKE_FLAGS=		prefix="${PREFIX}"

FLAVORS=		de fr es ru pl it
FLAVOR?=		
MAKE_ENV=		FLAVOR="${FLAVOR}"

.include <bsd.port.mk>
