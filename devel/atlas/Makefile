# $OpenBSD: Makefile,v 1.4 2001/11/11 13:57:32 heko Exp $

COMMENT=	"C++ reference implementation of the Atlas protocol"

VERSION=	0.4.3.1
DISTNAME=	Atlas-C++-${VERSION}
PKGNAME=	${DISTNAME:S/C++-//:L}
CATEGORIES=	devel
NEED_VERSION=	1.475

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	ftp://ftp.ecs.soton.ac.uk/pub/worldforge/acorn/0.4/src/ \
		http://kafka.i-site.com/~novalis/mirrors/acorn/0.4/src/

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
		patch-*

LIB_DEPENDS=	SDL.0.3:sdl-*-!no_x11:devel/sdl \
		sigc.0.0:libsigc++-*:devel/libsigc++

USE_X11=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

VMEM_WARNING=	Yes

.include <bsd.port.mk>
