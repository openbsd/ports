# $OpenBSD: Makefile,v 1.2 2010/09/15 13:52:12 sthen Exp $

COMMENT=	perl interface to the graphviz graphing tool

MODULES=	cpan
DISTNAME=	GraphViz-2.02
REVISION=	0
CATEGORIES=	math

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
