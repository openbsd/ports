# $OpenBSD: Makefile,v 1.8 2002/04/11 20:01:44 pvalchev Exp $

COMMENT=	"high-quality mpeg audio decoder"

VERSION=	0.14.2b
DISTNAME=	mad-${VERSION}
CATEGORIES=	audio devel
NEED_VERSION=	1.498

HOMEPAGE=	http://mad.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	ftp://ftp.mars.org/pub/mpeg/ \
		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= mad

MODULES=	gettext

FLAVORS=	debug esd
FLAVOR?=

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+= --enable-debugging
.else
CONFIGURE_ARGS+= --disable-debugging
.endif

.if ${FLAVOR:L:Mesd}
CONFIGURE_ARGS+= --with-esd
LIB_DEPENDS+=	esd.2::audio/esound
.else
CONFIGURE_ARGS+= --without-esd
.endif

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-sso \
		 --enable-nls
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-Llibmad/.libs -Llibid3tag/.libs -L${LOCALBASE}/lib"

# XXX workaround
.if ${MACHINE_ARCH} != "powerpc"
CONFIGURE_ARGS+= --enable-accuracy
.endif

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltmain_sh \
		patch-*

.include <bsd.port.mk>
