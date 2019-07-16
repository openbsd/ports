# $OpenBSD: Makefile,v 1.12 2019/07/16 21:29:41 sthen Exp $

COMMENT=		GNU stream editor

DISTNAME=		sed-4.2.2
PKGNAME=		g${DISTNAME}
REVISION=		3
CATEGORIES=		textproc
MASTER_SITES=		${MASTER_SITE_GNU:=sed/}
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		https://www.gnu.org/software/sed/

MAINTAINER=		Armin Wolfermann <armin@wolfermann.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB=		c iconv intl

LIB_DEPENDS=		devel/gettext,-runtime
BUILD_DEPENDS=		devel/bison

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--program-prefix=g

.include <bsd.port.mk>
