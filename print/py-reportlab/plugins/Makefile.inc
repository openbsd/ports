# $OpenBSD: Makefile.inc,v 1.1.1.1 2004/07/27 08:55:23 xsa Exp $

CATEGORIES=	print graphics

HOMEPAGE=	http://www.reportlab.org/rl_toolkit.html

MAINTAINER=	Aleksander Piotrowski <aleksander.piotrowski@nic.com.pl>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=	.tgz

MODULES=	python

RUN_DEPENDS=	::print/py-reportlab/reportlab

REGRESS_DEPENDS=${RUN_DEPENDS}
