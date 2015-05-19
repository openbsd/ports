# $OpenBSD: Makefile,v 1.51 2015/05/19 09:54:53 kettenis Exp $

COMMENT=	GNU parser generator

DISTNAME=	bison-2.3
REVISION=	2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=bison/}

HOMEPAGE=	https://www.gnu.org/software/bison/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c
MODULES=	devel/gettext
BUILD_DEPENDS=	devel/m4

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-yacc
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
