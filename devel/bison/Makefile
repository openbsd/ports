# $OpenBSD: Makefile,v 1.61 2020/04/04 20:26:17 naddy Exp $

COMMENT=	GNU parser generator

DISTNAME=	bison-3.3.2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=bison/}
EXTRACT_SUFX=	.tar.xz
REVISION=	1

HOMEPAGE=	https://www.gnu.org/software/bison/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB=	c iconv intl m

AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.16

LIB_DEPENDS=	devel/gettext,-runtime
BUILD_DEPENDS=	devel/gettext,-tools \
		devel/help2man \
		devel/m4
RUN_DEPENDS=	devel/m4

CONFIGURE_STYLE=autoreconf
CONFIGURE_ARGS=	--disable-yacc
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
