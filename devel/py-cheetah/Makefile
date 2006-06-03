# $OpenBSD: Makefile,v 1.4 2006/06/03 09:37:09 alek Exp $

COMMENT=	"Python-powered template engine and code generator"

DISTNAME=	Cheetah-0.9.18
PKGNAME=	py-${DISTNAME:L}p0
CATEGORIES=	devel textproc

HOMEPAGE=	http://www.cheetahtemplate.org/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# BSD-like 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cheetahtemplate/}

MODULES=	lang/python

NO_REGRESS=	Yes

.include <bsd.port.mk>
