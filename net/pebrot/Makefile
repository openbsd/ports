# $OpenBSD: Makefile,v 1.5 2004/03/01 08:20:22 kevlo Exp $

COMMENT=	"text-based MSN messenger client"

DISTNAME=	pebrot-0.8.5
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
