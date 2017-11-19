# $OpenBSD: Makefile,v 1.9 2017/11/19 00:53:16 naddy Exp $

COMMENT=		GNU stream editor

DISTNAME=		sed-4.2.2
PKGNAME=		g${DISTNAME}
REVISION=		1
CATEGORIES=		textproc
MASTER_SITES=		${MASTER_SITE_GNU:=sed/}
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		https://www.gnu.org/software/sed/

MAINTAINER=		Armin Wolfermann <armin@wolfermann.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c iconv intl

LIB_DEPENDS=		devel/gettext
BUILD_DEPENDS=		devel/bison

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--program-prefix=g

.include <bsd.port.mk>
