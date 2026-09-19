MODULES ?=	font

SIL_PROJECT_NAME ?=	${MODFONT_FAMILY}

HOMEPAGE ?=	https://software.sil.org/${SIL_PROJECT_NAME}/
SITES ?= 	https://software.sil.org/downloads/r/${SIL_PROJECT_NAME}/

MAINTAINER ?=	Anthony J. Bentley <bentley@openbsd.org>

# SIL OFL 1.1
PERMIT_PACKAGE ?=	Yes

NO_BUILD ?=	Yes
NO_TEST ?=	Yes

NO_BUILD ?=	Yes
NO_TEST ?=	Yes

MODFONT_FONTFILES ?=	*.ttf
MODFONT_DOCFILES ?=	*.txt
MODFONT_WEBFILES ?=	web/*.woff2
