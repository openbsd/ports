# $OpenBSD: Makefile,v 1.16 2020/07/03 21:13:01 sthen Exp $

COMMENT=	Internet Relay Chat (IRC) protocol client library for Python

GH_ACCOUNT=	sixohsix
GH_PROJECT=	python-irclib
GH_COMMIT=	acd5aa66f431550bd142e90590b64ff6840e6648
DISTNAME=	py-irclib-0.4.8.20110306
REVISION=	0

CATEGORIES=	net

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

FLAVORS=	python3
FLAVOR=		python3

NO_TEST=	Yes

EXAMPLES=	dccreceive dccsend irccat irccat2 servermap testbot.py
EXAMPLESDIR=	${PREFIX}/share/examples/py-irclib

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
.for f in ${EXAMPLES}
	${INSTALL_DATA} ${WRKSRC}/${f} ${EXAMPLESDIR}
.endfor

.include <bsd.port.mk>
