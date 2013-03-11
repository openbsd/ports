# $OpenBSD: Makefile,v 1.12 2013/03/11 10:50:16 espie Exp $

COMMENT=	perl debugger built with a PerlTk GUI

DISTNAME=	Devel-ptkdb-1.1092
REVISION=	1
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
