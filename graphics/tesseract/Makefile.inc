# $OpenBSD: Makefile.inc,v 1.3 2019/02/19 08:55:34 rapha Exp $


GH_TAGNAME ?=	4.0.0
GH_ACCOUNT=	tesseract-ocr

CATEGORIES +=	graphics textproc

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

# tests require 1GB+ extra files and some fiddling to get them to run
NO_TEST=	Yes
