# $OpenBSD: Makefile,v 1.1.1.1 2007/09/20 05:06:22 msf Exp $

COMMENT=	perl interface to the graphviz graphing tool

MODULES=	cpan
DISTNAME=	GraphViz-2.02
CATEGORIES=	math

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

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
