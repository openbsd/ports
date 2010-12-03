# $OpenBSD: Makefile,v 1.5 2010/12/03 11:45:39 ajacoutot Exp $

COMMENT=	perl interface to the graphviz graphing tool

MODULES=	cpan
DISTNAME=	GraphViz-2.02
REVISION=	1
CATEGORIES=	math
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-IPC-Run \
		devel/p5-Graph \
		math/graphviz \
		math/p5-Math-Bezier

.include <bsd.port.mk>
