# $OpenBSD: Makefile,v 1.2 2001/05/06 04:23:00 lebel Exp $

COMMENT=		"WWW OFFLine Explorer"

DISTNAME=		wwwoffle-2.5e
PKGNAME=		wwwoffle-2.5e
CATEGORIES=		www
NEED_VERSION=		1.402

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
