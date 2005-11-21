# $OpenBSD: Makefile,v 1.10 2005/11/21 03:19:36 kevlo Exp $

COMMENT=	"text-based MSN messenger client"

DISTNAME=	pebrot-0.8.7.1
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

MODULES=	lang/python

FLAVORS=	cjk
FLAVOR?=

.if ${FLAVOR:L:Mcjk}
RUN_DEPENDS=	:py-cjkcodecs-*:converters/py-cjkcodecs
.endif

post-extract:
	@find ${WRKSRC} -name 'CVS' -type d |xargs rm -rf

.include <bsd.port.mk>
