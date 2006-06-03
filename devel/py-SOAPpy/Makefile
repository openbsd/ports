# $OpenBSD: Makefile,v 1.2 2006/06/03 09:37:09 alek Exp $

COMMENT=	"Python API for SOAP HTTP/RPC"

DISTNAME=	SOAPpy-0.11.6
PKGNAME=	${DISTNAME:S/^/py-/}p0
CATEGORIES=    	devel www

HOMEPAGE=	http://pywebsvcs.sourceforge.net/

MAINTAINER=	Damien Miller <djm@openbsd.org>

MODULES=	lang/python

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pywebsvcs/}

BUILD_DEPENDS=	::devel/py-fpconst
RUN_DEPENDS=	::devel/py-fpconst \
		::textproc/py-xml
REGRESS_DEPENDS=${RUN_DEPENDS}

# There are lots of tests, but most of them require network access
# The one below doesn't, but it has a known failure...
do-regress: fake
	@cd ${WRKSRC} && ${MAKE_ENV} && \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} \
		    ./tests/SOAPtest.py

.include <bsd.port.mk>
