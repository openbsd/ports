# $OpenBSD: Makefile,v 1.16 2000/10/22 14:02:56 espie Exp $

DISTNAME=	sox-12.17
CATEGORIES=	audio
NEED_VERSION=	1.320
MASTER_SITES=	http://home.sprynet.com/~cbagwell/

HOMEPAGE=	http://home.sprynet.com/~cbagwell/sox.html

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	--enable-fast-alaw --enable-fast-ulaw \
		--with-oss-dsp --without-sun_audio

FLAVORS=	gsm
FLAVOR?=

.if ${FLAVOR:L} == "gsm"
LIB_DEPENDS=	gsm.1::audio/gsm
CONFIGURE_ARGS+= --with-gsminc="${LOCALBASE}/include" \
		 --with-gsmlib="${LOCALBASE}/lib"
.endif

.include <bsd.port.mk>
