# $OpenBSD: Makefile,v 1.1.1.1 2004/11/11 03:43:37 djm Exp $

COMMENT=	"Python API for advanced date calculations"

VERSION=	0.5
DISTNAME=	python-dateutil-${VERSION}
PKGNAME=	${DISTNAME:S/^python-/py-/}
CATEGORIES=    	devel

HOMEPAGE=	https://moin.conectiva.com.br/DateUtil

MAINTAINER=	Damien Miller <djm@openbsd.org>

MODULES=	lang/python

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

# File is mirrored from original site (below) because it is hosted on an 
# SSL server with a busted certificate
# https://moin.conectiva.com.br/DateUtil?action=AttachFile&do=get&target=python-dateutil-${VERSION}

MASTER_SITES=	http://www.mindrot.org/files/
EXTRACT_SUFX=	.tar.bz2

do-regress: fake
	@cd ${WRKSRC} && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./test.py

.include <bsd.port.mk>
