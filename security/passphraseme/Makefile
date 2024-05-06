COMMENT =	passphrase generator using EFF's wordlists

MODPY_EGG_VERSION=	0.1.5
REVISION =		2

GH_ACCOUNT =	micahflee
GH_PROJECT =	passphraseme
GH_TAGNAME =	${MODPY_EGG_VERSION}

CATEGORIES =	security

MAINTAINER =	George Rosamond <george@nycbug.org>

# GPLv3 only
# EFF wordlists: CC-BY 3.0
# Fandom wordlists:
#   "Any trademarks within the word list are the property of their respective
#   trademark holders, who are not affiliated with the Electronic Frontier
#   Foundation and do not sponsor or endorse these passwords."
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/passphraseme
	${INSTALL_DATA} ${WRKDIST}/README.md ${PREFIX}/share/doc/passphraseme

.include <bsd.port.mk>
