# $OpenBSD: Makefile.inc,v 1.4 2019/07/12 20:47:10 sthen Exp $


GH_TAGNAME ?=	4.0.0
GH_ACCOUNT=	tesseract-ocr

CATEGORIES +=	graphics textproc

# Apache 2.0
PERMIT_PACKAGE=	Yes

# tests require 1GB+ extra files and some fiddling to get them to run
NO_TEST=	Yes
