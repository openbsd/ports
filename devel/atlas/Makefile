# $OpenBSD: Makefile,v 1.8 2004/07/19 11:06:33 pvalchev Exp $

COMMENT=	"C++ reference implementation of the Atlas protocol"

VERSION=	0.4.3.1
DISTNAME=	Atlas-C++-${VERSION}
PKGNAME=	${DISTNAME:S/C++-//:L}
CATEGORIES=	devel

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

USE_X11=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

VMEM_WARNING=	Yes

.include <bsd.port.mk>
