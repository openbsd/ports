# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:31 espie Exp $

COMMENT =	easy-to-use minimalistic disassembler library

DISTNAME =	udis86-1.7
CATEGORIES =	devel

SHARED_LIBS=	udis86		0.0

HOMEPAGE =	http://udis86.sourceforge.net/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=udis86/}

WANTLIB +=	c

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
MAKE_ENV =		LIBudis86_VERSION=${LIBudis86_VERSION}

.include <bsd.port.mk>
