# $OpenBSD: Makefile,v 1.36 2019/07/12 20:44:39 sthen Exp $

COMMENT=		internationalized string handling

DISTNAME=		libidn-1.35
REVISION=		0

SHARED_LIBS +=  idn                  18.0     # 18.0

CATEGORIES=		devel

HOMEPAGE=		https://www.gnu.org/software/libidn/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv intl

MASTER_SITES=		${MASTER_SITE_GNU:=libidn/}

LIB_DEPENDS=		devel/gettext,-runtime

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-csharp \
			--disable-java \
			--disable-valgrind-tests

.include <bsd.port.mk>
