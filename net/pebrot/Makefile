# $OpenBSD: Makefile,v 1.6 2004/04/27 13:14:01 kevlo Exp $

COMMENT=	"text-based MSN messenger client"

DISTNAME=	pebrot-0.8.6
PKGNAME=	py-${DISTNAME}
CATEGORIES=	net

HOMEPAGE=	http://pebrot.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pebrot/}

NO_REGRESS=	Yes

MODULES=	python

FLAVORS=	cjk
FLAVOR?=

.if ${FLAVOR:L:Mcjk}
RUN_DEPENDS=	:py-cjkcodecs-*:converters/py-cjkcodecs
.endif

.include <bsd.port.mk>
