# $OpenBSD: Makefile,v 1.8 2010/11/15 19:46:03 espie Exp $

COMMENT=	perl debugger built with a PerlTk GUI

MODULES=	cpan
DISTNAME=	Devel-ptkdb-1.1092
PKGNAME=	p5-${DISTNAME}
CATEGORIES=  	devel

HOMEPAGE=	http://sourceforge.net/projects/ptkdb/

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ptkdb/}

CONFIGURE_ARGS=	INSTALLDIRS="site"
USE_GROFF =	Yes

BUILD_DEPENDS=	x11/p5-Tk
RUN_DEPENDS=	x11/tk/8.4 \
		x11/p5-Tk

.include <bsd.port.mk>
