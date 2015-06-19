# $OpenBSD: Makefile,v 1.14 2015/06/19 08:36:37 jasper Exp $

COMMENT=	perl debugger built with a PerlTk GUI

DISTNAME=	Devel-ptkdb-1.233
EPOCH =		0
CATEGORIES=	devel

HOMEPAGE=	http://ptkdb.sourceforge.net/

# perl
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ptkdb/}

MODULES=	cpan

CONFIGURE_ARGS=	INSTALLDIRS="site"

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	x11/p5-Tk

.include <bsd.port.mk>
