# $OpenBSD: Makefile,v 1.2 2010/10/19 07:54:22 espie Exp $

COMMENT=		GNU stream editor

VERSION=		4.1.5
DISTNAME=		sed-${VERSION}
PKGNAME=		gsed-${VERSION}
CATEGORIES=		textproc

HOMEPAGE=		http://www.gnu.org/software/sed/

MAINTAINER=		Armin Wolfermann <armin@wolfermann.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_GNU:=sed/}

MODULES=		devel/gettext
BUILD_DEPENDS=		::devel/bison

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--program-prefix=g
USE_GMAKE=		Yes
USE_GROFF =	Yes

.include <bsd.port.mk>
