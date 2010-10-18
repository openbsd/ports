# $OpenBSD: Makefile,v 1.3 2010/10/18 20:52:06 espie Exp $

COMMENT=	perl interface to the graphviz graphing tool

MODULES=	cpan
DISTNAME=	GraphViz-2.02
REVISION=	0
CATEGORIES=	math
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-IPC-Run \
		::devel/p5-Graph \
		::math/graphviz \
		::math/p5-Math-Bezier

.include <bsd.port.mk>
