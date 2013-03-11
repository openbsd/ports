# $OpenBSD: Makefile,v 1.47 2013/03/11 10:50:01 espie Exp $

COMMENT=	GNU parser generator

DISTNAME=	bison-2.3
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=bison/}
REVISION =	0

HOMEPAGE=	http://www.gnu.org/software/bison/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c
MODULES=	devel/gettext
BUILD_DEPENDS=	devel/m4

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-yacc
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
