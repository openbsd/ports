# $OpenBSD: Makefile,v 1.11 2003/07/31 19:12:00 sturm Exp $


COMMENT=		"unit testing framework for python"

VERSION=		1.4.1
DISTNAME=		pyunit-${VERSION}
PKGNAME=		py-unit-${VERSION}
CATEGORIES=     	devel

HOMEPAGE=		http://pyunit.sourceforge.net/

MAINTAINER=		Shell Hung <shell@openbsd.org>

# Python License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pyunit/}

FLAVORS=		no_x11
FLAVOR?=

MODULES=	python

MODPY_VERSION=	2.1

.if !${FLAVOR:L:Mno_x11}
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:python-tkinter-${MODPY_VERSION}*:lang/python/${MODPY_VERSION},-tkinter
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
