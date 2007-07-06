# $OpenBSD: Makefile,v 1.38 2007/07/06 14:21:05 naddy Exp $

COMMENT-main=	"portable audio output library"
COMMENT-arts=	"aRts module for portable audio output library"
COMMENT-esd=	"ESounD module for portable audio output library"

VERSION=	0.8.6
DISTNAME=	libao-${VERSION}
PKGNAME-main=	libao-${VERSION}
PKGNAME-arts=	libao-arts-${VERSION}
PKGNAME-esd=	libao-esd-${VERSION}
CATEGORIES=    	audio
HOMEPAGE=	http://www.xiph.org/ao/
SHARED_LIBS +=	ao                   3.3      # .3.3

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/ao/

PSEUDO_FLAVORS=	no_arts no_esd
FLAVOR?=	no_arts

MULTI_PACKAGES=	-main
.if !${FLAVOR:L:Mno_arts}
MULTI_PACKAGES+=-arts
.endif
.if !${FLAVOR:L:Mno_esd}
MULTI_PACKAGES+=-esd
.endif

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static
.if ${FLAVOR:L:Mno_arts}
CONFIGURE_ARGS+=--disable-arts
.endif
.if ${FLAVOR:L:Mno_esd}
CONFIGURE_ARGS+=--disable-esd
.endif
CONFIGURE_ARGS+=--disable-nas \
		--disable-polyp

.if ${MULTI_PACKAGES:M-arts}
MODULES=		devel/gettext
.endif

LIB_DEPENDS-main=
RUN_DEPENDS-main=
WANTLIB-main=		pthread

LIB_DEPENDS-arts=	${MODGETTEXT_LIB_DEPENDS} \
			artsc::x11/kde/arts3
RUN_DEPENDS-arts=	${MODGETTEXT_RUN_DEPENDS} \
			:libao-${VERSION}:audio/libao
WANTLIB-arts=		glib-2.0 gmodule-2.0 gthread-2.0 pthread

LIB_DEPENDS-esd=	esd.>=2::audio/esound
RUN_DEPENDS-esd=	:libao-${VERSION}:audio/libao
WANTLIB-esd=		audiofile m pthread

pre-build:
	@perl -i -pe 's:/etc/libao.conf:${SYSCONFDIR}/libao.conf:g' \
		${WRKDIST}/src/ao_private.h \
		${WRKDIST}/libao.conf.5 \
		${WRKDIST}/doc/config.html

.include <bsd.port.mk>
