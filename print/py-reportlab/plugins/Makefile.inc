# $OpenBSD: Makefile.inc,v 1.4 2010/11/20 09:48:40 espie Exp $

CATEGORIES=	print graphics

HOMEPAGE=	http://www.reportlab.org/rl_toolkit.html

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=	.tgz

MODULES=	lang/python

RUN_DEPENDS=	print/py-reportlab/reportlab

REGRESS_DEPENDS=${RUN_DEPENDS}
