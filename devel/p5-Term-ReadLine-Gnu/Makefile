# $OpenBSD: Makefile,v 1.28 2013/03/11 10:50:22 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		GNU Readline Library Wrapper Module

MODULES=		cpan
DISTNAME=		Term-ReadLine-Gnu-1.16
REVISION=		4
CATEGORIES=		devel
USE_GROFF =		Yes

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c readline termcap

TEST_DEPENDS=	x11/p5-Tk
TEST_FLAGS=		TERM=${TERM}
TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
