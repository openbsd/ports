GH_TAGNAME ?=	5.1.0
GH_ACCOUNT=	tesseract-ocr

CATEGORIES +=	graphics textproc

# Apache 2.0
PERMIT_PACKAGE=	Yes

# tests require 1GB+ extra files and some fiddling to get them to run
NO_TEST=	Yes
