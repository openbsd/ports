# $OpenBSD: Makefile,v 1.1.1.1 2002/03/24 20:32:30 pvalchev Exp $

COMMENT=	"front-end to CORBA IDL"

VERSION=	0.6.8
DISTNAME=	libIDL-${VERSION}
PKGNAME=	${DISTNAME:L}
CATEGORIES=	devel
NEED_VERSION=	1.516

HOMEPAGE=	http://andrewtv.org/libIDL/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltconfig \
	    	${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltmain_sh \
		patch-*

LIB_DEPENDS=	glib::devel/glib

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

USE_X11=	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
