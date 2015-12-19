# $OpenBSD: Makefile.inc,v 1.6 2015/12/19 20:47:03 bentley Exp $

CATEGORIES=	print graphics

HOMEPAGE=	http://www.reportlab.org/rl_toolkit.html

MAINTAINER=	Aleksander Piotrowski <pelotasplus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=	.tgz

MODULES=	lang/python

RUN_DEPENDS=	print/py-reportlab/reportlab

TEST_DEPENDS=${RUN_DEPENDS}
