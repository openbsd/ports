# $OpenBSD: Makefile,v 1.11 2013/02/01 15:13:39 stu Exp $

COMMENT=	perl debugger built with a PerlTk GUI

DISTNAME=	Devel-ptkdb-1.1092
REVISION=	1
CATEGORIES=	devel

HOMEPAGE=	http://sourceforge.net/projects/ptkdb/

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ptkdb/}

MODULES=	cpan

CONFIGURE_ARGS=	INSTALLDIRS="site"

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	x11/p5-Tk

.include <bsd.port.mk>
