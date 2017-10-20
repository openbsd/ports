# $OpenBSD: Makefile,v 1.32 2017/10/20 11:37:32 jca Exp $

COMMENT=		internationalized string handling

DISTNAME=		libidn-1.33
REVISION=		0

SHARED_LIBS +=  idn                  17.2     # 17.16

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

post-extract:
	rm ${WRKSRC}/contrib/doxygen/*.orig

# hack to avoid regenerating docs
post-patch:
	touch -r ${WRKSRC}/lib/punycode.c${PATCHORIG} ${WRKSRC}/lib/punycode.c

.include <bsd.port.mk>
