# $OpenBSD: Makefile,v 1.7 2003/06/23 10:50:21 naddy Exp $

COMMENT=		"WWW OFFLine Explorer"

DISTNAME=		wwwoffle-2.5e
CATEGORIES=		www

HOMEPAGE=		http://www.gedanken.demon.co.uk/wwwoffle/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SUNSITE:=apps/www/servers/} \
			ftp://ftp.demon.co.uk/pub/unix/httpd/

EXTRACT_SUFX=		.tgz

FLAVORS=		de fr es ru pl it
FLAVOR?=		

MAKE_ENV=		FLAVOR="${FLAVOR}"
MAKE_FLAGS=		prefix="${PREFIX}"

NO_REGRESS=		Yes

.include <bsd.port.mk>
