# $OpenBSD: Makefile,v 1.2 2006/06/03 09:37:09 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"Radix tree implementation for Python"

DISTNAME=	py-radix-0.4
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel net
MAINTAINER=	Damien Miller <djm@openbsd.org>

MASTER_SITES=	http://www2.mindrot.org/files/py-radix/
HOMEPAGE=	http://www.mindrot.org/py-radix.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python

do-regress: fake
	@cd ${WRKSRC} && ${MAKE_ENV} \
	    PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./test.py

.include <bsd.port.mk>
