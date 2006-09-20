# $OpenBSD: Makefile,v 1.5 2006/09/20 12:41:46 xsa Exp $

COMMENT=	"Internet Relay Chat (IRC) protocol client library for Python"

DISTNAME=	python-irclib-0.4.6
PKGNAME=	${DISTNAME:S/python/py/g}
CATEGORIES=	net

HOMEPAGE=	http://python-irclib.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=python-irclib/}

MODULES=	lang/python

NO_REGRESS=	Yes

EXAMPLES=	dccreceive dccsend irccat irccat2 servermap testbot.py
EXAMPLESDIR=	${PREFIX}/share/examples/py-irclib

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
.for f in ${EXAMPLES}
	${INSTALL_DATA} ${WRKSRC}/${f} ${EXAMPLESDIR}
.endfor

.include <bsd.port.mk>
