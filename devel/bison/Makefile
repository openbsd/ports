# $OpenBSD: Makefile,v 1.60 2019/07/16 21:29:41 sthen Exp $

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
BUILD_DEPENDS=	${MODGNU_AUTOMAKE_DEPENDS} \
		devel/help2man \
		devel/m4
RUN_DEPENDS=	devel/m4

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-yacc
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

do-gen:
	cd ${WRKSRC} && ${SETENV} ${AUTOCONF_ENV} automake -fi

.include <bsd.port.mk>
