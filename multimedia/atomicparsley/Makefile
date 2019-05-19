# $OpenBSD: Makefile,v 1.12 2019/05/19 11:26:25 naddy Exp $

COMMENT=	read and set MPEG-4/3GPP metadata tags

V=		0.9.6
DISTNAME=	atomicparsley-$V
REVISION=	3
DISTFILES=	${DISTNAME}{$V}.tar.bz2
WRKDIST=	${WRKDIR}/wez-atomicparsley-da2f6e4fc120

CATEGORIES=	multimedia

HOMEPAGE=	https://bitbucket.org/wez/atomicparsley/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2 "or its successor"
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	https://bitbucket.org/wez/atomicparsley/get/

CONFIGURE_STYLE=  autoreconf
CONFIGURE_ENV=    ac_cv_func_lroundf=yes \
		  OBJCXX="${CXX}"
AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.15
AUTORECONF=	  ./autogen.sh

NO_TEST=	Yes
SEPARATE_BUILD= Yes

.include <bsd.port.mk>
