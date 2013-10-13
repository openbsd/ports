# $OpenBSD: Makefile,v 1.13 2013/10/13 11:15:03 landry Exp $

COMMENT=	perl debugger built with a PerlTk GUI

DISTNAME=	Devel-ptkdb-1.232
EPOCH =		0
CATEGORIES=	devel

HOMEPAGE=	http://sourceforge.net/projects/ptkdb/

# perl
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ptkdb/}

MODULES=	cpan

CONFIGURE_ARGS=	INSTALLDIRS="site"

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	x11/p5-Tk

.include <bsd.port.mk>
