# $OpenBSD: Makefile,v 1.2 2000/07/04 00:28:39 krw Exp $

DISTNAME=	rpm-3.0.4
CATEGORIES=	misc archivers emulators
NEED_VERSION=	1.310

# GPL
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

MAINTAINER=	espie@openbsd.org

HOMEPAGE=	http://www.rpm.org/
MASTER_SITES=	ftp://ftp.rpm.org/pub/rpm/dist/rpm-3.0.x/

LIB_DEPENDS=	bz2.::archivers/bzip2
RUN_DEPENDS=	gettext::devel/gettext
LIB_DEPENDS+=	intl.::devel/gettext 

CONFIGURE_STYLE=	gnu

# Enforce check for pgp, so no build-time depend is needed
CONFIGURE_ENV=		PGPBIN=$(LOCALBASE)/bin/pgp
CONFIGURE_ENV+=		varprefix=/var
SEPARATE_BUILD=		simple

.include <bsd.port.mk>
