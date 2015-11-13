# $OpenBSD: Makefile.inc,v 1.1 2015/11/13 12:54:22 ajacoutot Exp $

DISTNAME ?=	${GH_PROJECT}-${GH_TAGNAME}

GH_TAGNAME ?=	3.04.00
GH_ACCOUNT=	tesseract-ocr

CATEGORIES +=	graphics textproc

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes
