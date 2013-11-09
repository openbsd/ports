# $OpenBSD: Makefile,v 1.50 2013/11/09 23:19:02 naddy Exp $

COMMENT=	GNU parser generator

DISTNAME=	bison-2.3
REVISION=	1
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
