# $OpenBSD: Makefile,v 1.16 2019/07/12 20:44:52 sthen Exp $

COMMENT=	perl debugger built with a PerlTk GUI

DISTNAME=	Devel-ptkdb-1.233
EPOCH =		0
CATEGORIES=	devel

HOMEPAGE=	http://ptkdb.sourceforge.net/

# perl
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ptkdb/}

MODULES=	cpan
PKG_ARCH=	*

CONFIGURE_ARGS=	INSTALLDIRS="site"

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	x11/p5-Tk

.include <bsd.port.mk>
