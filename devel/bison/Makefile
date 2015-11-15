# $OpenBSD: Makefile,v 1.52 2015/11/15 11:53:30 jca Exp $

COMMENT=	GNU parser generator

DISTNAME=	bison-3.0.4
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=bison/}

HOMEPAGE=	https://www.gnu.org/software/bison/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c
MODULES=	devel/gettext
BUILD_DEPENDS=	devel/help2man \
		devel/m4
RUN_DEPENDS=	devel/m4

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-yacc
# Set bison to use "m4 -g" instead of "m4 --gnu" to permit use with m4
# from the base OS by setting M4=/usr/bin/m4 in the environment. This is
# for development purposes; bison currently uses GNU regular expressions
# which are not compatible with base m4.
CONFIGURE_ENV+=	ac_cv_prog_gnu_m4_gnu="-g"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.if defined(M4)
TEST_ENV=	M4="${M4}"
.endif

.include <bsd.port.mk>
