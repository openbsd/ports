# $OpenBSD: Makefile,v 1.1.1.1 2001/07/29 07:18:59 pvalchev Exp $

COMMENT=	"configuration system for the STAGE server"

VERSION=	0.5.0
DISTNAME=	varconf-${VERSION}
CATEGORIES=	devel
NEED_VERSION=	1.427

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	ftp://ftp.ecs.soton.ac.uk/pub/worldforge/libs/varconf/ \
		ftp://two.woovis.com/pub/worldforge/libs/varconf/ \
		http://dreadnought.res.cmu.edu/worldforge/libs/varconf/ \
		http://kafka.i-site.com/~novalis/mirrors/acorn/0.4/src/

LIB_DEPENDS=	Atlas.1.1:atlas-*:devel/atlas \
		sigc.0.0:libsigc++-*:devel/libsigc++

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
