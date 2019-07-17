# $OpenBSD: Makefile,v 1.14 2019/07/17 14:49:20 danj Exp $

ONLY_FOR_ARCHS= amd64 arm i386

COMMENT=	Monkey's audio lossless codec

DISTNAME=	mac-3.99-u4-b5
PKGNAME=	mac-3.99.4.5
REVISION =	5
SHARED_LIBS +=  mac                  0.0      # .2.0
CATEGORIES=	audio

HOMEPAGE=	http://www.monkeysaudio.com/

# Monkey's Audio Source Code License Agreement
# http://www.monkeysaudio.com/license.html
PERMIT_PACKAGE=	Yes

WANTLIB=	c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	http://bsd.cenkes.org/myports/


CONFIGURE_STYLE=gnu

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS=	devel/yasm
CONFIGURE_ARGS= --enable-assembly=yes
.else
CONFIGURE_ARGS= --enable-assembly=no
.endif

.include <bsd.port.mk>
