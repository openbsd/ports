# $OpenBSD: Makefile,v 1.4 2000/10/22 19:33:27 espie Exp $

DISTNAME=	rpm-3.0.4
CATEGORIES=	misc archivers emulators
NEED_VERSION=	1.310

# GPL
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

MAINTAINER=	Marc Espie <espie@openbsd.org>

HOMEPAGE=	http://www.rpm.org/
MASTER_SITES=	ftp://ftp.rpm.org/pub/rpm/dist/rpm-3.0.x/

LIB_DEPENDS=	bz2.::archivers/bzip2
RUN_DEPENDS=	gettext::devel/gettext
LIB_DEPENDS+=	intl.::devel/gettext 
LIB_DEPENDS+=	popt.0.::devel/popt

CONFIGURE_STYLE=	gnu

# Enforce check for pgp, so no build-time depend is needed
CONFIGURE_ENV=		PGPBIN=$(LOCALBASE)/bin/pgp
CONFIGURE_ENV+=		varprefix=/var
SEPARATE_BUILD=		simple

.include <bsd.port.mk>
