# $OpenBSD: Makefile,v 1.1.1.1 2007/07/19 16:24:37 jasper Exp $

ONLY_FOR_ARCHS= amd64 arm i386

COMMENT=	Monkey's audio lossless codec

DISTNAME=	mac-3.99-u4-b5
PKGNAME=	mac-3.99.4.5
SHARED_LIBS +=  mac                  0.0      # .2.0
CATEGORIES=	audio

HOMEPAGE=	http://www.monkeysaudio.com/

MAINTAINER=	Vlad Glagolev <stelzy@gmail.com>

# Monkey's Audio Source Code License Agreement
# http://www.monkeysaudio.com/license.html
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c m stdc++

MASTER_SITES=	http://bsd.cenkes.org/myports/

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS=	::devel/yasm
CONFIGURE_ARGS= --enable-assembly=yes
.else
CONFIGURE_ARGS= --enable-assembly=no
.endif

.include <bsd.port.mk>
