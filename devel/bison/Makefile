# $OpenBSD: Makefile,v 1.54 2016/04/05 20:37:00 naddy Exp $

COMMENT=	GNU parser generator

DISTNAME=	bison-3.0.4
REVISION=	0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=bison/}

HOMEPAGE=	https://www.gnu.org/software/bison/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c iconv intl
LIB_DEPENDS=	devel/gettext
BUILD_DEPENDS=	devel/help2man \
		devel/m4
RUN_DEPENDS=	devel/m4

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-yacc
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
