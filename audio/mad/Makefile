# $OpenBSD: Makefile,v 1.5 2001/10/27 00:11:40 pvalchev Exp $

COMMENT=	"high-quality mpeg audio decoder"

VERSION=	0.14.1b
DISTNAME=	mad-${VERSION}
CATEGORIES=	audio devel
NEED_VERSION=	1.484

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

FLAVORS=	debug
FLAVOR?=

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+= --enable-debugging
.else
CONFIGURE_ARGS+= --disable-debugging
.endif

USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-sso \
		 --enable-accuracy \
		 --enable-nls
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltmain_sh \
		patch-*

.include <bsd.port.mk>
