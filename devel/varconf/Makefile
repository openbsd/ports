# $OpenBSD: Makefile,v 1.4 2004/11/24 00:11:04 espie Exp $

COMMENT=	"configuration system for the STAGE server"

VERSION=	0.5.4
DISTNAME=	varconf-${VERSION}
CATEGORIES=	devel

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		pthread

MASTER_SITES=	http://purple.worldforge.org/wf/downloads/libs/varconf/ \
		ftp://ftp.ecs.soton.ac.uk/pub/worldforge/libs/varconf/ \
		ftp://two.woovis.com/pub/worldforge/libs/varconf/ \
		http://dreadnought.res.cmu.edu/worldforge/libs/varconf/ \
		http://kafka.i-site.com/~novalis/mirrors/acorn/0.4/src/

LIB_DEPENDS=	Atlas.1.1:atlas-*:devel/atlas \
		sigc.0.0:libsigc++-*:devel/libsigc++

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
