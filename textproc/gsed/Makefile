# $OpenBSD: Makefile,v 1.7 2013/03/11 11:42:41 espie Exp $

COMMENT=		GNU stream editor

DISTNAME=		sed-4.2.2
PKGNAME=		g${DISTNAME}
CATEGORIES=		textproc
MASTER_SITES=		${MASTER_SITE_GNU:=sed/}
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://www.gnu.org/software/sed/

MAINTAINER=		Armin Wolfermann <armin@wolfermann.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MODULES=		devel/gettext
BUILD_DEPENDS=		devel/bison

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--program-prefix=g

.include <bsd.port.mk>
