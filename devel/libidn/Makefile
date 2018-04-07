# $OpenBSD: Makefile,v 1.33 2018/04/07 11:42:36 ajacoutot Exp $

COMMENT=		internationalized string handling

DISTNAME=		libidn-1.34

SHARED_LIBS +=  idn                  17.2     # 17.18

CATEGORIES=		devel

HOMEPAGE=		https://www.gnu.org/software/libidn/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c iconv intl

MASTER_SITES=		${MASTER_SITE_GNU:=libidn/}

LIB_DEPENDS=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-csharp \
			--disable-java \
			--disable-valgrind-tests

.include <bsd.port.mk>
